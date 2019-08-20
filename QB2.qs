namespace Microsoft.Samples
{
	open Microsoft.Quantum.Intrinsic;
	open Microsoft.Quantum.Canon;
	
	operation HelloQ(): Result
	{
		body
		{
			Message($"Hello from quantum world!");
			return Zero;
		}
	}
	
	/// # Summary: 
    ///     A more sophisticated operation that shows how to 
    ///     specify parameters, instantiate qubits, and return values.

    	operation HelloAgain(count: Int, name: String) : Result[]
    	{
        	Message($"Hello again {name}!"); 

	        mutable r = new Result[count];
        	using (q = Qubit()) 
			{
            	for (i in 1..count) 
				{
                	ApplyIf(X, i == 2, q);
                	set r w/= (i - 1) <- M(q);
                	Reset(q);
            	}
        	}

        	return r;
    	}


}