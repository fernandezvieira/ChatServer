-module(server).
-export([start/0]).

start() ->
	loop([]),
	{ok, self()}.
	
loop([]) ->
	receiveBlock([]);
	
		
loop(List) ->
	receiveBlock(List).
		
receiveBlock([]) ->
	io:format("empty");
receiveBlock([H|T]) ->
	io:format("anything").
	% receive
	% 		{add, Client} ->
	% 			loop([Client | [H|T]]);
	% 		{From, Message} ->
	% 			H ! {From, Message},
	% 			loop(T);
	% 		_ ->
	% 			io:format("Heh, we're smarter than you humans.~n"),
	% 			loop([H|T])
	% 	end.