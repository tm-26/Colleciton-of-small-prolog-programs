/*Author Charlton Sammut
  Date: 17/01/2019*/

help():-
	write('-----------------------------------------------------------------'), nl,
	write('This program contains the following functions:'), nl,
	write('extract_ints: Extracts integers from a list.'), nl,
	write('remove_dups: Removes duplicates from a list.'), nl,
	write('last_element: Returns the last element in a list'),nl,
	write('last_2_elements: Returns the last two elements in a list'),nl,
	write('last_n_elements: Returns the last n number of elements in a list'),nl,
	write('first_n_elements: Returns the first n number of elements in a list'),nl,
	write('-----------------------------------------------------------------'), nl.
	  

append_lists(L,[],L).
append_lists([],L,L).
append_lists([X|Y],L,[X|Z]):-append_lists(Y,L,Z). 

/*Quesition a*/

extract_ints([H|T],Ans):-extract_ints([H|T],Ans,Temp).
extract_ints([],Ans,Temp):-Ans = Temp. /*If listlas is empty return answer*/
extract_ints([H|T],Ans,Temp):-integer(H), append_lists(Temp,[H],Temp2),extract_ints(T,Ans,Temp2),!. /*Check if int, if check is successfully, head is appended into temp list*/
extract_ints([H|T],Ans,Temp):-extract_ints(T,Ans,Temp). /*If not intger, remove head*/

/*Question b*/

remove_dups([H|T],Ans):-remove_dups([H|T],Ans,Temp).
remove_dups([],Ans,Temp):-Ans = Temp. /*If list is empty return answer*/
remove_dups([H|T],Ans,Temp):-not(member(H,T)),append_lists(Temp,[H],Temp2),remove_dups(T,Ans,Temp2),!. /*Check if head is not a member of list(a.k.a no duplicates of it), if check is successfully, head is appended into temp list*/
remove_dups([H|T],Ans,Temp):-remove_dups(T,Ans,Temp). /*If head is a member of the tail, remove head*/

/*Question ci*/

last_element([H|T],Ans):-last_element([H|T],Ans,Temp).
last_element([],Ans,Temp):-Ans = Temp. /*If list is empty return answer*/
last_element([H|T],Ans,Temp):-append(T,H,Equivalence), =(H,Equivalence),append(Temp,[H],Temp2),last_element(T,Ans,Temp2),!. /*Check if head is the last element*/
last_element([H|T],Ans,Temp):-last_element(T,Ans,Temp). /*If check fails, remove head*/

/*Question cii*/

last_2_elements([H|T],Ans):-last_2_elements([H|T],Ans,Temp).
last_2_elements([],Ans,Temp):-Ans = Temp.
last_2_elements([H|T],Ans,Temp):-append(T,H,Length),length(Length,2),append(Temp,[H],Temp2),last_2_elements(T,Ans,Temp2),!.
last_2_elements([H|T],Ans,Temp):-last_2_elements([T],Ans,Temp).

/*Question ciii*/

last_n_elements([H|T],N,Ans):-last_n_elements([H|T],N,Ans,Temp).
last_n_elements([],Ans,Temp):- Ans = Temp.
last_n_elements([H|T],N,Ans,Temp):-append([H],T,Length),length(Length, N),append(Temp,[H],Temp2),last_n_elements(T,Ans,Temp2),!.
last_n_elements([H|T],N,Ans,Temp):-last_n_elements(T,N,Ans,Temp).


/*Question civ*/

first_n_elements(L,N,Ans):-reverse(L,R),last_n_elements(R,N,Ans).


