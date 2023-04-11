-module(temp).
-export([f2c/1, c2f/1, convert/1]).

f2c(F) ->
  (F - 32) * 5 / 9.

c2f(C) ->
  C * 9 / 5 + 32.

convert({c, Value}) ->
  {f, c2f(Value)};
convert({f, Value}) ->
  {c, f2c(Value)}.

