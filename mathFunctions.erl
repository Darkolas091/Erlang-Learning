%%%-------------------------------------------------------------------
%%% @author esevdar
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 07. tra 2023 8:26
%%%-------------------------------------------------------------------
-module(mathFunctions).
-author("esevdar").

%% API
-export([perimeter/1]).

perimeter({square, Side}) ->
  4 * Side;
perimeter({circle, Radius}) ->
  2*math:pi() * Radius;
perimeter({triangle,A ,B ,C}) when A > 0 ->
  A+B+C;
perimeter(_) ->
  io:format("Enter something~n", []).