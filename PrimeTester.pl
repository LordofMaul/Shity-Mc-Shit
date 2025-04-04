divisible(X,Y) :- 0 =:= X mod Y.
divisors_between(X, Y) :- Y*Y =< X, (divisible(X,Y); divisors_between(X,Y+1)).
is_prime(2).
is_prime(X) :- X>2,not(divisors_between(X,2)).
