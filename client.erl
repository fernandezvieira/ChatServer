-module(client).
-export([start/0, send_message/2, join/2]).

start() ->
	loop(),
	{ok, self()}.

loop() ->
	receive 
		{From, Message} ->
			io:format("From: ~p Message:  ~p~n", [From, Message]),
			loop();
		_ ->
			io:format("Unknown"),
			loop()
	end.
				
send_message(Server, Message) ->
	Server ! {self(), Message}.
	
join(Client, Server) ->
	Server ! Client.
	
	% receive
	% 	{_From, Message} ->
	% 		io:format(Message);
	% 	_ ->
	% 		io:format("Unknown")
	% end.