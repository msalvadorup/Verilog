fsl:
	vcs ../mapped/fixSinkList_mapped.v ../lib/saed90nm.v ../rtl/memory.v tb_fixSinkList.v -full64 -debug_pp +neg_tchk -R -l fixSinkList_mapped.log
	./simv

nsioc:
	vcs ../mapped/neighborSinkInOtherCluster_mapped.v ../lib/saed90nm.v ../rtl/memory.v tb_neighborSinkInOtherCluster.v -full64 -debug_pp +neg_tchk -R -l neighborSinkInOtherCluster_mapped.log
	./simv

fmb:
	vcs ../mapped/findMyBest_mapped.v ../lib/saed90nm.v ../rtl/memory.v tb_findMyBest.v -full64 -debug_pp +neg_tchk -R -l findMyBest_mapped.log
	./simv

bnimc:
	vcs ../mapped/betterNeighborsInMyCluster_mapped.v ../lib/saed90nm.v ../rtl/memory.v tb_betterNeighborsInMyCluster.v -full64 -debug_pp +neg_tchk -R -l betterNeighborsInMyCluster_mapped.log
	./simv

ufsl:
	vcs ../rtl/fixSinkList.v ../lib/saed90nm.v ../rtl/memory.v tb_fixSinkList.v -full64 -debug_pp +neg_tchk -R -l fixSinkList.log
	./simv

unsioc:
	vcs ../rtl/neighborSinkInOtherCluster.v ../lib/saed90nm.v ../rtl/memory.v tb_neighborSinkInOtherCluster.v -full64 -debug_pp +neg_tchk -R -l neighborSinkInOtherCluster.log
	./simv

ufmb:
	vcs ../rtl/findMyBest.v ../lib/saed90nm.v ../rtl/memory.v tb_findMyBest.v -full64 -debug_pp +neg_tchk -R -l findMyBest.log
	./simv

ubnimc:
	vcs ../rtl/betterNeighborsInMyCluster.v ../lib/saed90nm.v ../rtl/memory.v tb_betterNeighborsInMyCluster.v -full64 -debug_pp +neg_tchk -R -l betterNeighborsInMyCluster.log
	./simv

rnga:
	vcs ../mapped/mapped_rngAddress.v ../lib/saed90nm.v tb_rngAddress.v -full64 -debug_pp +neg_tchk -R -l mapped_rngAddress.log
	./simv

rng:
	vcs ../mapped/mapped_randomGenerator.v ../lib/saed90nm.v tb_randomGenerator.v -full64 -debug_pp +neg_tchk -R -l mapped_randomGenerator.log
	./simv

tbm:
	vcs ../rtl/mem.v ../lib/saed90nm.v tb_mem.v -full64 -debug_pp +neg_tchk -R -l umem.log
	./simv

wp:
	vcs ../rtl/mem.v ../mapped/mapped_randomGenerator.v ../mapped/mapped_rngAddress.v ../mapped/mapped_winnerPolicy.v ../lib/saed90nm.v tb_winnerPolicy.v -full64 -debug_pp +neg_tchk -R -l mapped_winnerPolicy.log 
	./simv

lc:
	vcs ../rtl/mem.v ../mapped/mapped_learnCosts.v ../lib/saed90nm.v tb_learnCosts.v -full64 -debug_pp +neg_tchk -R -l mapped_learnCosts.log
	./simv

fsl:
	vcs ../rtl/mem.v ../mapped/mapped_fixSinkList.v ../lib/saed90nm.v tb_fixSinkList.v -full64 -debug_pp +neg_tchk -R -l mapped_fixSinkList.log
	./simv

s: 
	vcs ../rtl/mem.v ../mapped/mapped_selectMyAction.v ../lib/saed90nm.v tb_selectMyAction.v -full64 -debug_pp +neg_tchk -R -l mapped_selectMyAction.log
	./simv

r:
	vcs ../rtl/mem.v ../mapped/mapped_reward.v ../lib/saed90nm.v tb_reward.v -full64 -debug_pp +neg_tchk -R -l mapped_reward.log
	./simv

top:
	vcs ../rtl/memory.v ../mapped/top_mapped.v ../lib/saed90nm.v tb_top.v -full64 -debug_pp +neg_tchk -R -l top_mapped.log
	./simv

