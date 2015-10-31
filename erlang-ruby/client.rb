require 'rubygems'
require 'erlang_ruby'

f = File.open('/tmp/test.log', 'wb+')
counter = 0
input = STDIN
while counter < 5 do
  length = input.read(4).unpack("N").first
  next unless length
  
  ruby_term = ErlangRuby::Decoder.perform(input.read(length))
  f.puts ruby_term
  f.flush
  counter = counter + 1
end
f.close
