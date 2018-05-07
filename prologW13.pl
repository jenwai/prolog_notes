lectures(susan, 2102).
lectures(ali, 2103).
lectures(chong, 3181).
lectures(ali, 2106).

studies(farid, 2102).
studies(jamil, 2103).
studies(james, 2103).
studies(julia, 2106).
studies(julia, 3181).
studies(haris, 3181).
studies(haris, 2106).

%think of ',' as a AND 
%this is an example of backtracking, not recursive/list
%since it does not call back itself
teaches(X,Y):- lectures(X, Id), studies(Y, Id).

max(A, B, A):- A > B.
max(A, B, B):- A =< B.
%we dont need to check 2nd predicate if first is true 
maxKai(A, B, A):- A > B, !.
maxKai(_, B, B).
% this is an example of green cut (only improve performance)
%  without affecting the set of solution that the program generates
% red cuts, affects the solution (change the declarative meanign of 
%  the program)
%  


p(1).
p(2):- !.
p(3). 

%?- p(X)
%?- p(X), P(Y)
%?- p(X), !, p(Y)
%
%

marks(Point, 'A'):- Point >= 80, !. 
marks(Point, 'B'):- Point >= 65, !.
marks(Point, 'C'):- Point >= 55, !.
marks(Point, 'D'):- Point >= 50, !.
marks(Point, 'Passed'):- Point >= 40, !.
marks(Point, 'Failed'):- Point < 40.










