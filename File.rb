phone_book = File.open("phone_book.txt", "w") do |file|
  file.write "Joshua: 010-123-1234\n"
  file.puts "Joshua: 123-234-3456"
end

File.open("phone_book.txt", "r") {|file| puts file.read}
#File.open("Main.rb", "r") {|file| puts file.read}

lines = File.readlines("Main.rb")
