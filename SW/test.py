#import numpy
import math
import random


# CONSTANTS
MY_NODE_ID = 2
MY_CLUSTER_ID = 0
BATTERY_THRESHOLD = 0.01

# LISTS
betterneighbors = []
nextsinks = []
cost = [5, 3.5, 2.7, 2.2, 1.8, 1.6, 1.4, 1.3, 1.2, 1.1, 1.0]

# NODE GLOBAL VARIABLES
epsilon = 0.5
epsilon_step = 0.1
initial_epsilon = epsilon

# EXTRACTED FEEDBACK INFO FROM MESSAGE
fsourceID_in = 10
fbatteryStat_in = 1
fValue_in = 2
fclusterID_in = 4
fdestinationID_in = 2

###################################################################################
############################### routingTableClass #################################
###################################################################################
'''
routingTableClass
    neighbors
        neighborID
        batteryStat
        qValue
        clusterID
        sinkIDs
    knownSinks
    worstHops
'''
'''
Missing Features:
	1. Delete a neighbor object (opposite of neighbors append)
			check neighborsDelete function in routingTableClass
'''
class routingTableClass:

    # Init self
    def __init__(self):

        # Neighbors list
        self.neighbors = []
        okay = neighbors()     	# neighbors object
        self.neighbors.append(okay)

        self.knownSinks = []
        self.worstHops = []

    # print all of object's value
    def printAll(self):

        print("Printing all neighbor objects per element\n")
        for i in range(len(self.neighbors)):
            print("neighborID: " + str(self.neighbors[i].neighborID))
            print("batteryStat: " + str(self.neighbors[i].batteryStat))
            print("qValue: " + str(self.neighbors[i].qValue))
            print("clusterID: " + str(self.neighbors[i].clusterID))
            print("sinkIDs: ")
            print(self.neighbors[i].sinkID)
            print("\n")

        print("Printing knownSinks")
        print(self.knownSinks)
        print("\n")

        print("Printing worstHops")
        print(self.worstHops)
        print("\n")

    def neighborsAppend(self):
        okay = neighbors()
        self.neighbors.append(okay)

    def neighborsDelete(self, ID):
	    neighborsSize = len(self.neighbors)
	    if (ID >= neighborsSize):
		    print("NO WAY! No neighbors element with index " + str(ID))
		    return

	    self.neighbors.pop(ID)

    def findIndexOfNodeID(self, node_id):
        for i in range(len(self.neighbors)):
            if (self.neighbors[i].neighborID == node_id):
                return i

def populateRT():

    routingTable = routingTableClass()

    # Initialize
    # neighbors[0]
    routingTable.neighbors[0].neighborID = 1
    routingTable.neighbors[0].batteryStat = 0.7
    routingTable.neighbors[0].qValue = 5
    routingTable.neighbors[0].clusterID = 2
    routingTable.neighbors[0].sinkID = [11,22,33,44]

    # neighbors[1]
    routingTable.neighborsAppend()			# always do this when adding a new neighbor
    routingTable.neighbors[1].neighborID = 2
    routingTable.neighbors[1].batteryStat = 0.9
    routingTable.neighbors[1].qValue = 1
    routingTable.neighbors[1].clusterID = 0
    routingTable.neighbors[1].sinkID = [11,22,33,44]

    # neighbors[2]
    routingTable.neighborsAppend()			# always do this when adding a new neighbor
    routingTable.neighbors[2].neighborID = 5
    routingTable.neighbors[2].batteryStat = 0.8
    routingTable.neighbors[2].qValue = 1
    routingTable.neighbors[2].clusterID = 1
    routingTable.neighbors[2].sinkID = [11,22,33,44]

    # knownSinks
    #routingTable.knownSinks.append(23)
    routingTable.knownSinks.append(11)
    routingTable.knownSinks.append(22)
    routingTable.knownSinks.append(33)
    routingTable.knownSinks.append(44)
    
    # worstHops
    routingTable.worstHops.append(60)

    # Print the routingTable object
    #routingTable.printAll()

    # Delete neighbors[0] and print the resulting routingTable object
    #routingTable.neighborsDelete(0)
    #routingTable.printAll()

    return routingTable

class neighbors:

    def __init__(self):
        self.neighborID = 0
        self.batteryStat = 0
        self.qValue = 0
        self.clusterID = 0
        self.sinkID = []

###################################################################################
############################### Q-Learning Proper #################################
###################################################################################

def learnCosts(fsourceID, fbatteryStat, fValue, fclusterID, _routingTable):
	reinit = 0
	if ((fbatteryStat < 0) or (fValue < 0) or (fsourceID < 0)):
		return reinit
	
	found = 0
	for n in range(len(_routingTable.neighbors)):
		if (_routingTable.neighbors[n].neighborID == fsourceID):
			found = 1
			_routingTable.neighbors[n].sinkID = _routingTable.knownSinks
			_routingTable.neighbors[n].batteryStat = fbatteryStat
			if (_routingTable.neighbors[n].qValue < fValue):
				reinit = 1
			_routingTable.neighbors[n].qValue = fValue
			break

	if (found):
		return reinit

	newNeighbor = neighbors()
	newNeighbor.neighborID = fsourceID
	newNeighbor.batteryStat = fbatteryStat
	newNeighbor.qValue = fValue
	newNeighbor.clusterID = fclusterID
	newNeighbor.sinkID = _routingTable.knownSinks
	_routingTable.neighbors.append(newNeighbor)
	return reinit

def winnerPolicy(_mybest, _besthop, _bestvalue, _betterneighbors, _bestneighborID):
	nexthop = -1
	global epsilon
	# Exploration Strategy
	explore_constant = random.uniform(0, 1)
	if (explore_constant < epsilon):
		which = random.uniform(0, 1)
		nexthop = _betterneighbors[int(math.ceil(which * len(_betterneighbors) - 1))]
		print("Selected exploration next hop is " + str(nexthop))
		epsilon -= epsilon_step
		#print(explore_constant)
		if (epsilon < 0):
			epsilon = float(0)

	if (nexthop < 0):
		if (_bestvalue < (_mybest - _mybest * 0.001)):
			nexthop = _besthop
			print("Next hop is the besthop! " + str(nexthop))

		if (_bestvalue > ( (_mybest - _mybest * 0.001) and (_bestvalue < (_mybest + _mybest * 0.001)) and (_bestneighborID != MY_NODE_ID))):
			nexthop = _besthop
			print("Next hop is the besthop! " + str(nexthop))

	return nexthop	

def reward(_action, _besthop, _routingTable):
	fsourceID = MY_NODE_ID
	fbatteryStat = _routingTable.neighbors[_besthop].batteryStat
	fValue = _routingTable.neighbors[_besthop].qValue+1
	fclusterID = MY_CLUSTER_ID
	fdestinationID = _routingTable.neighbors[_action].neighborID
	return fsourceID, fbatteryStat, fValue, fclusterID, fdestinationID

def costEvaluation(sourceID, batteryStat, qValue, clusterID, destinationID, routingTable):
	if (sourceID != MY_NODE_ID):
		print("Learning from neighbor: " + str(sourceID))
		reinit = learnCosts(sourceID, batteryStat, qValue, clusterID, routingTable)
		if (reinit):
			epsilon = initial_epsilon
	
	# Check if I am sink
	for x in range (len(routingTable.knownSinks)):
		if (MY_NODE_ID == routingTable.knownSinks[x]):
			print("I am a sink. Schedule aggregation!")
			return
	
	# Check if I am a forwarding node
	# Check if am the destination of the message
	if (destinationID != MY_NODE_ID):
		print("This message is not for me. destinationID != MY_NODE_ID")
		return

	# Fix the sinkIDs list of all neighbors
	# Add my knownSinks to routingTable->neighbor[n]->sinkIDs
	for s in range(len(routingTable.knownSinks)):
		for n in range(len(routingTable.neighbors)):
			if routingTable.knownSinks[s] not in routingTable.neighbors[n].sinkID:
				routingTable.neighbors[n].sinkID.append( routingTable.knownSinks[s] )
				routingTable.neighbors[n].qValue += routingTable.worstHops[s]-1
				#print("hahaha")

	# Check if there are neighbor sinks in other cluster
	for x in range(len(routingTable.neighbors)):
		if (routingTable.neighbors[x].neighborID in routingTable.knownSinks) and (MY_CLUSTER_ID != routingTable.neighbors[x].clusterID):
			print("I am a cluster head. Schedule aggregation!")
			return

	# Find out my best Q-Value (among all neighbors)
	# In and out cluster
	mybest = 1000000
	for n in range(len(routingTable.neighbors)):
		placeholder_qvalue = routingTable.neighbors[n].qValue
		if (placeholder_qvalue < mybest):
			mybest = placeholder_qvalue

	# Add 1 for own broadcast cost
	mybest += 1

	# Calculate my own best Q-Value factoring battery status
	if ( len( cost ) > 0 ):
		cost_size = float( len(cost) )
		neighbor_index = routingTable.findIndexOfNodeID(MY_NODE_ID)
		my_battery = float( routingTable.neighbors[neighbor_index].batteryStat )
		index = math.ceil(( cost_size - 1 ) * my_battery )
		if (index >= len(cost) ):
			index = len(cost) - 1

		mybest = mybest * cost[index]
		print("Mybest value: " + str(mybest))
		#print(epsilon)

	# Check if there is a neighbor in my cluster with a better q-value than mine
	# DAPAT BUHAY PA
	for n in range( len(routingTable.neighbors) ):

		# Are we on different clusters?
		if ( routingTable.neighbors[n].clusterID != MY_CLUSTER_ID ):
			#print("pumasok ako" + str(n))
			continue

		# Is my neighbor dead?
		if ( routingTable.neighbors[n].batteryStat < BATTERY_THRESHOLD ):
			continue

		# Does my neighbor have a better(lower) Q-value?
		if ( routingTable.neighbors[n].qValue <= mybest ):
			betterneighbors.append(n)

		# Find out if the neighbor ID is in knownSinks
		if routingTable.neighbors[n].neighborID in routingTable.knownSinks:
			nextsinks.append(n)

	besthop = -1

	if ( len(betterneighbors) > 0 ):

		# Find first the best Q-Value
		bestvalue = 1000000

		for s in range( len(betterneighbors) ):
			curr_q = routingTable.neighbors[betterneighbors[s]].qValue

			cost_size = float( len(cost) )
			s_battery = float( routingTable.neighbors[betterneighbors[s]].batteryStat )

			if ( len(cost) > 0 ):
				index = math.ceil(( cost_size - 1 ) * s_battery )
				if ( index >= len(cost)):
					index = len(cost) - 1
				curr_q = curr_q * cost[index]

			print("Neighbor " + str(routingTable.neighbors[betterneighbors[s]].neighborID) + " has best Q value of " + str(curr_q) + "\n")

			if (curr_q < bestvalue):
				besthop = betterneighbors[s]
				bestvalue = curr_q
		
		bestneighborID = routingTable.neighbors[besthop].neighborID
		action = winnerPolicy(mybest, besthop, bestvalue, betterneighbors, bestneighborID)	
	# If there is a sink in my cluster, always send my packet to that sink
	if (len(nextsinks) > 0):
		action = nextsinks[0]

	if (action < 0):
		print("No better in-cluster head. Schedule aggregation!")
		return
	
	return reward(action, besthop, routingTable)


def main():
    routingTableObject = populateRT()
    fsourceID_out, fbatteryStat_out, fValue_out, fclusterID_out, fdestinationID_out = costEvaluation(fsourceID_in, fbatteryStat_in, fValue_in, fclusterID_in, fdestinationID_in, routingTableObject)
    print(fsourceID_out, fbatteryStat_out, fValue_out, fclusterID_out, fdestinationID_out)
    routingTableObject.printAll()
    
main()
