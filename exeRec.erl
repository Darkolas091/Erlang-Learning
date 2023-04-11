%%%-------------------------------------------------------------------
%%% @author esevdar
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. tra 2023 14:31
%%%-------------------------------------------------------------------
-module(exeRec).
-author("esevdar").

%% API
-export([ford/1,foru/1,sum/1,nth/2,sublist/2,seq/2]).

%% Recursion from N to 1
ford(1) ->
  io:format("~p~n",[1]);
ford(N) ->
  io:format("~p~n",[N]),
  ford(N-1).

%% Recursion from 1 to N
foru(1) ->
  io:format("~p~n",[1]);
foru(N) ->
  foru(N-1),
  io:format("~p~n", [N]).

%% Recursion of sums of all integers from 1 to N
sum(1) -> 1;
sum(N) when N > 1 ->
  N + sum(N-1).

%% Returns Nth element of the List
nth(1, [Head|_]) -> Head;
nth(N, [_|Tail]) when N > 1 -> nth(N-1, Tail).

%% Returns a list containing the N first elements of the list
sublist(_, 0) -> [];
sublist([Head|Tail], N) when N > 0 -> [Head | sublist(Tail, N-1)].

%%Returns a list containing the numbers between low and high
seq(Low, High) when Low =< High -> [Low | seq(Low+1, High)];
seq(_, _) -> [].




