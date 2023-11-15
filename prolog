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
parent(aishwarya,aradhys).
%conditions
mother(M,C):-female(M),parent(M,c).
son(S,P):-male(S),parent(P,S).
daughter(D,P):-female(D),parent(P,D).
father(F,C):-male(F),parent(F,C).
grandfather(GF,C):-male(GF),parent(GF,M),parent(M,c).
grandmother(GM,C):-female(GM),parent(GM,M),parent(M,C).
sister(S,B):-female(S),parent(P,S),parent(P,B).
brother(B,S):-male(B),parent(M,B),parent(M,S).

