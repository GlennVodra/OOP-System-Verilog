virtual class Simple; //Virtual class can't be instantiated

	string name = "undefined";

	function new(string name);
		this.name = name;
	endfunction
	
	pure virtual function void print(); //Children MUST implement

endclass