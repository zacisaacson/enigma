require './lib/enigma'

enigma = Enigma.new

message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

encrypted = enigma.encrypt(incoming_text)

writer = File.open(ARGV[1], "w")


writer.write(encrypted[:encryption])

writer.close

puts "Created '#{ARGV[1]}' with the key #{encrypted[:key]} and date #{encrypted[:date]}"
