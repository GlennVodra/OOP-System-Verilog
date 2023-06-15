class Sample;

	protected static int NumberofSamples = 0; //Static Variable

	int classDataMember0 = 0;
	int classDataMember1 = 0;
	
	function new(int param0, int param1); //Constructor
		classDataMember0 = param0;
		classDataMember1 = param1;
		NumberofSamples++;
	endfunction: new
	
	virtual function int product(int EN);
		return classDataMember0 * classDataMember1;
	endfunction: product
	
	static function int getNumberofSamples(); //Static Function
		return NumberofSamples;
	endfunction: getNumberofSamples 
	
endclass
