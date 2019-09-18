message = File.open(ARGV[0], "r")

incoming_text = message.read

message.close

encrypted = incoming_text

writer = File.open(ARGV[1], "w")



writer.write(encrypted)

writer.close
