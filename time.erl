%%%-------------------------------------------------------------------
%%% @author esevdar
%%% @copyright (C) 2023, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. tra 2023 11:28
%%%-------------------------------------------------------------------
-module(time).
-author("esevdar").

%% API
-export([hms_to_seconds/3, seconds_to_hms/1,seconds_to_h/1
  ,seconds_to_m/1,seconds_to_s/1]).

hms_to_seconds(H,M,S) ->
  H * 3600 * M * 60 + S.

seconds_to_h(Seconds) ->
  Seconds div 3600.

seconds_to_m(Seconds) ->
  (Seconds rem 3600) div 60.

seconds_to_s(Seconds) ->
  (Seconds rem 60).

seconds_to_hms(Seconds) ->
  {Seconds div 3600,
  (Seconds rem 3600) div 60,
  (Seconds rem 60)}.





