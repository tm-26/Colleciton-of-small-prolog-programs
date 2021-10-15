/* Author: Charlton Sammut
   Date: 17/01/2019 */

asort(Xs, Ys):- write('Xs holds the unsorted list, and Ys represents the variable to output the final answer'),nl,write('asort1 is accessed'),nl,asort1(Xs, [], Ys),!. 
asort1([], Ys, Ys):-write('When the unsorted list is emty, the algorithm outputs the sorted list'), nl.
asort1([X|Xs],Ys0,Ys):-write('Xs is broken down into a head and a tail (X ans Xs) respectively'),nl,write('insert is accessed, having Ys0 as a list, X as the head and Ys1 as the list of sorted variables so far'), nl, insert(Ys0,X,Ys1),asort1(Xs,Ys1,Ys).
insert([Y|Ys], X, [Y|Zs]):-Y < X, write('When the variable Y is bigger then the variable X, the insert function fails, but when the variable Y is samller then the variable X, the insert function succeedes, and it recurses onto itself'), nl, !, insert(Ys, X, Zs).
insert(Ys, X, [X|Ys]):-write('insert is accessed once again, this time having Ys a tail and X as the head'),nl.


bsort([X|Xs],[Y|Ys]):-write('X represents the first element of the list, also known as the head, while Xs shows the rest of the list, also known as the tail'), nl, minimum(Xs,X,Y),efface([X|Xs],Y,Zs),bsort(Zs,Ys),!.
bsort([],[]).
minimum([Y|Ys],X,Z):-write('The Xs list is transfered into the Y and Ys variables, were Y is the head and Ys is the tail'), nl,Y =< X, write('If '),write(Y),write('is smaller or equal to'),write(X),write('it succedes and recurses onto itself, and this recurssion prcoess is continoued untill y >= x is false.'), nl, !,minimum(Ys,Y,Z).
minimum([_|Ys],X,Z):- minimum(Ys,X,Z).
minimum([],X,X):-write('Minimum is used to find the smallest value in the unsorted list'), nl.
efface([Y|Xs],Y,Xs):-!.
efface([X|Xs],Y,[X|Zs]):-efface(Xs,Y,Zs).

bubble_sort(List,Sorted):-b_sort(List,[],Sorted).
b_sort([],Acc,Acc).
b_sort([H|T],Acc,Sorted):-bubble(H,T,NT,Max),b_sort(NT,[Max|Acc],Sorted).
   
bubble(X,[],[],X).
bubble(X,[Y|T],[Y|NT],Max):-X>Y,bubble(X,T,NT,Max).
bubble(X,[Y|T],[X|NT],Max):-X=<Y,bubble(Y,T,NT,Max).

