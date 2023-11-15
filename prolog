juice(apple).
fruit(orange).
fruit(X):-juice(X).



owns(rahul,car(bmw)). %rahul owns bmw car 
owns(aditya,car(chevy)).
owns(rahman,car(civic)).
owns(afzal,car(chevy)).
sedan(car(bmw)). %bmw car is sedan
sedan(car(civic)).
truck(car(chevy)).                                                                                %output:
% owns(aditya,X) = aditya owns which car                                                          X=car(chevy)
% owns(aditya,_) = adiya owns something('_')                                                      True
% owns(Who,car(bmw)) = Who owns bmw car                                                           Who=rahul
% owns(rahul,X),sedan(X) = does rahul owns sedan                                                  True
% ?- write("beleive in yourself"),nl,write("you will be happy"),nl.nl=newline                     /*beleive in yourself
                                                                                                  you will be happy
                                                                                                  true*/







male(amitabh).
male(abhishek).
female(teji).
female(jaya).
female(sweta).
female(aishwarya).
female(aradhya).
%relations
parent(harivansh,amitabh).
parent(teji,amitabh).
parent(amitabh,abhishek).
parent(amitabh,sweta).
parent(jaya,abhishek).
parent(jaya,sweta).
parent(abhishek,aradhya).
parent(aishwarya,aradhya).
%conditions
mother(M,C):-female(M),parent(M,C).
son(S,P):-male(S),parent(P,S).
daughter(D,P):-female(D),parent(P,D).
father(F,C):-male(F),parent(F,C).
grandfather(GF,C):-male(GF),parent(GF,M),parent(M,C).
grandmother(GM,C):-female(GM),parent(GM,M),parent(M,C).
sister(S,B):-female(S),parent(P,S),parent(P,B).
brother(B,S):-male(B),parent(M,B),parent(M,S).

/*            output
?-daughter(X,Y):
X = sweta,
Y = amitabh
X = sweta,
Y = jaya
X = aradhya,
Y = abhishek
X = aradhya,
Y = aishwarya

?-grandmother(X,Y):
X = teji,
Y = abhishek
X = teji,
Y = sweta
X = jaya,
Y = aradhya



?-statistics:
Started at Tue Nov 14 10:30:02 2023
92485.041 seconds cpu time for 9,465 inferences
1,689,770 atoms, 46,669 functors, 28,522 predicates, 1,801 modules, 33,098,157 VM-codes

                    Limit   Allocated      In use
Local  stack:           -       20 Kb    3,592  b
Global stack:           -       64 Kb   18,304  b
Trail  stack:           -       34 Kb    1,592  b
       Total:      238 Mb      118 Kb       23 Kb

30,902 atom garbage collections gained 404,135,410 atoms in 12914.310 seconds.
6,444 clause garbage collections gained 48,329,335 clauses in 86.273 seconds.
75 threads, 1,322,870 finished threads used 76909.456 seconds
