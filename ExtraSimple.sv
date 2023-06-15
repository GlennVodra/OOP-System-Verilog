class ExtraSimple #(type T) extends Simple; //Parameterized Class

	protected static T queue[$]; //Simple FI-FO Queue

	function new(string name);
		super.new(name);
		queue.push_back(name);
	endfunction: new

	
	function void print(); //No Return Value
		string output_string = "";
		
		foreach (this.name[i])	// For Each Loop
			output_string = {output_string, this.name[i], " "};	// String Concatenation
		
		$display("Widename is: %s", output_string); //Prints to Console
		
	endfunction	
	
	function T PopOfQueue(); //Parameterized return type
		return queue.pop_front(); //Remove item from QUEUE
	endfunction: PopOfQueue 
	

endclass