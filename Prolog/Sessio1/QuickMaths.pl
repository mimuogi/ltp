factorial(0,1).
factorial(1,1).
	
factorial(N,Y) :- 	A is N - 1,	factorial(A,B),	Y is B * N.

tab(0).
tab(N) :- put('a'), M is N - 1, tab(M).
