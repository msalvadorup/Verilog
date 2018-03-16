top:	
	iverilog -o tb_top tb_top.v
	vvp tb_top
	gtkwave tb_top.vcd

fsl:
	iverilog -o tb_fixSinkList tb_fixSinkList.v
	vvp tb_fixSinkList
	gtkwave tb_fixSinkList.vcd

nsioc:
	iverilog -o tb_neighborSinkInOtherCluster tb_neighborSinkInOtherCluster.v
	vvp tb_neighborSinkInOtherCluster
	gtkwave tb_neighborSinkInOtherCluster.vcd

fmb:
	iverilog -o tb_findMyBest tb_findMyBest.v
	vvp tb_findMyBest
	gtkwave tb_findMyBest.vcd

bnimc:
	iverilog -o tb_betterNeighborsInMyCluster tb_betterNeighborsInMyCluster.v
	vvp tb_betterNeighborsInMyCluster
	gtkwave tb_betterNeighborsInMyCluster.vcd

wp:
	iverilog -o tb_winnerPolicy tb_winnerPolicy.v
	vvp tb_winnerPolicy
	gtkwave tb_winnerPolicy.vcd

rng:
	iverilog -o tb_randomGenerator tb_randomGenerator.v
	vvp tb_randomGenerator
	gtkwave tb_randomGenerator.vcd

rnga:
	iverilog -o tb_rngAddress tb_rngAddress.v
	vvp tb_rngAddress
	gtkwave tb_rngAddress.vcd

lc:
	iverilog -o tb_learnCosts tb_learnCosts.v
	vvp tb_learnCosts
	gtkwave tb_learnCosts.vcd	

sma:
	iverilog -o tb_selectMyAction tb_selectMyAction.v
	vvp tb_selectMyAction
	gtkwave tb_selectMyAction.vcd	

clean:
	rm -f a.out
	rm -f tb_top
	rm -f tb_top.vcd
	rm -f tb_fixSinkList
	rm -f tb_fixSinkList.vcd
	rm -f tb_neighborSinkInOtherCluster
	rm -f tb_neighborSinkInOtherCluster.vcd
	rm -f tb_findMyBest
	rm -f tb_findMyBest.vcd
	rm -f tb_betterNeighborsInMyCluster
	rm -f tb_betterNeighborsInMyCluster.vcd
	rm -f tb_randomGenerator.vcd
	rm -f tb_randomGenerator
	rm -f tb_rngAddress
	rm -f tb_rngAddress.vcd
	rm -f tb_winnerPolicy.vcd
	rm -f tb_winnerPolicy
	rm -f tb_learnCosts.vcd
	rm -f tb_learnCosts