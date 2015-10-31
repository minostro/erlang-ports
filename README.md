# erlang-ports
Common place to drop code related with Erlang ports.

# erlang-ruby
Toy project to test the interaction between Erlang and Ruby processes. Currently, only Erlang can send messages to the Ruby process trough an erlang port. Communication from Ruby to Erlang is not implemented yet.

## Setup
```
cd erlang-ruby
bundle install
```

## Usage
You will need to open two terminals.  In the first one, open an erlang console and run the following:

```erlang
1> c(server).
{ok,server}
2> P = server:start().
#Port<0.2323>
3> server:send(P, {test}).
true
```

In the second console, do the following:

```bash
tail -f /tmp/test.log
```

You should be able to see the terms you sent from Erlang to the running Ruby process in that log.  The ruby process is running `client.rb` script.

 
