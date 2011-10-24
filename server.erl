-module(server).
-export([start/0]).

start() ->
    loop([]).

loop(State) ->
    receive
        {add, Client} ->
            io:format("Adding ~p to ~p ~n", [Client, State]),
            loop([Client | State]);
		{print} ->
			print(State),
			loop(State);
        _ ->
            io:format("Heh, we're smarter than you humans.~n"),
            loop(State)
      end.

print([H|T]) ->
	io:format("~p ", [H]),
	print(T);
print([]) ->
	false.