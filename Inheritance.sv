class SampleExtension extends Sample;
	
	function new(int param0);
		super.new(param0, param0); //Calls Parent Constructor
	endfunction: new
	
	function int product(int EN);  //Diferent Function Implmentation
		if (EN == 1) begin
			return classDataMember0 * classDataMember1;
		end
		else begin
			return -1;
		end
	endfunction: product

endclass