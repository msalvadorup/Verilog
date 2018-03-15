module tb_mem;

	reg clock, wr_en;
	wire [15:0] mem_data_out, mem_data_in;
	reg [15:0] address;

	mem mem1(clock, address, wr_en, mem_data_in, mem_data_out);

	// Clock
	initial begin
		clock = 0;
		forever #10 clock = ~clock;	
	end

	initial begin
		wr_en = 0;
		address = 4;	
	end
/*
	initial begin
		$readmemh("mem.txt", mem1.memory);	
	end
*/
    	initial begin
        	$vcdplusfile("tb_mem.vpd"); //$dumpfile("tb_randomGenerator.vcd");
        	$vcdpluson;
		$sdf_annotate("../mapped/mem.sdf", mem);
		//$dumpvars(0, tb_randomGenerator);
        	#750
       		$finish;
    	end
endmodule
