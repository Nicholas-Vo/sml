fun even2 nil = 0 (* base case *)
	| even2 (a::nil) = if (a mod 2 = 0) 
		then a 
		else 0
	| even2 (a::b::T) = if (a mod 2 <> 0) 
		then even2 (b::T)
		else if (b mod 2 = 0) 
			then a + b
			else even2 (a::T);

even2 [1,2,3,4,5]; (* 6 *)					  
