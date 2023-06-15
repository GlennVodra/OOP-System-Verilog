`define TRUE 1	  //Macros
`define FALSE 0
`define NULL 0

module Main;		  

	Sample sample_0; //Handle to object
	
	Sample sample_1 = new(8,3); // Can be instantiated like this...
	
	SampleExtension sample_2 = new(5);
	
	SampleExtension sample_3 = new(4);
	Sample sample_4;
	
	
	ExtraSimple #(string) simple_0 = new("Glenn");
	
	
	initial begin // ...Or this
		sample_0 = new(
			.param0(5),
			.param1(3)
		);
		
		sample_4 = sample_3; //Polymorphism
		
		$display("Sample Class 0 Product: %0d", sample_0.product(`NULL)); // Parent Sample
		$display("Sample Class 1 Product: %0d", sample_1.product(`NULL)); // Parent
		$display("Sample Class 2 Product: %0d", sample_2.product(`TRUE)); // Child 
		$display("Sample Class 4 Product: %0d", sample_4.product(`NULL)); //Uses Child's Method
		$display("Number of Samples: %0d", Sample::getNumberofSamples()); //Evoking Static Method
		
		
		simple_0.print(); //Evoking Non-Static Method
		
		$display("%s removed from queue.", simple_0.PopOfQueue());
		
		
	end
	
endmodule