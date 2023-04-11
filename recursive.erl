%%%-------------------------------------------------------------------
%%% @author esevdar
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. tra 2023 10:14
%%%-------------------------------------------------------------------
-module(recursive).
-author("esevdar").

%% API
-export([fac/1]).

fac(0) -> 1;
fac(N) when N > 0 -> N*fac(N-1).


len([]) -> 0;
len([_|T]) -> 1 + len(T).

