move(1, From_rod, To_rod, _, Counter, NewCounter) :-
NewCounter is Counter + 1,
write("Move disk 1 from rod "), write(From_rod),
write(" to rod "), write(To_rod),
write(", move #"), write(NewCounter), nl.

move(N, From_rod, To_rod, Aux_rod, Counter, NewCounter) :-
N > 1,
N1 is N - 1,
move(N1, From_rod, Aux_rod, To_rod, Counter, TempCounter),
NewCounter1 is TempCounter + 1,
write("Move disk "), write(N),
write(" from rod "), write(From_rod),
write(" to rod "), write(To_rod),
write(", move #"), write(NewCounter1), nl,
move(N1, Aux_rod, To_rod, From_rod, NewCounter1, NewCounter).

hanoi(N) :- move(N, 'A', 'C', 'B', 0, TotalMoves), write("Total moves: "), write(TotalMoves), nl.
