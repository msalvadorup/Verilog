a:
	iverilog -o testbench testbench.v
	vvp testbench
	gtkwave testbench.vcd

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

clean:
	rm -f a.out
	rm -f testbench
	rm -f testbench.vcd
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