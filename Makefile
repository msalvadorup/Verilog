a:
	iverilog -o testbench testbench.v
	vvp testbench
	gtkwave testbench.vcd

top:	
	iverilog -o tb_top tb_top.v
	vvp tb_top
	gtkwave tb_top.vcd

clean:
	rm -f a.out
	rm -f testbench
	rm -f testbench.vcd
	rm -f tb_top
	rm -f tb_top.vcd