/*Name: Charlton Sammut
  Date: 17/01/2019*/

subl(L1,L2):-subl(L1,L1,L2).
subl(OS,[X],[X|T]):-write('found '),write(OS),write(' at front of '),append(OS,T,T1),write(T1),nl.
subl(OS,T,[]):-fail.
subl(OS,[H1,H2|T1],[H1,H2|T2]):-subl(OS,[H2|T1],[H2|T2]).
subl(OS,[H1,H2|T1],[H1,H3|T2]):-subl(OS,OS,[H3|T2]).
subl(OS,[H1|T1],[H3|T2]):-subl(OS,OS,T2).
