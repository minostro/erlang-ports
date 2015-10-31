-module(server).
-export([start/0, send/2]).

start() ->
  open_port({spawn, "bundle exec ruby client.rb"}, [{packet, 4}, exit_status, binary]).

send(Port, Value) ->
  port_command(Port, term_to_binary(Value)).
