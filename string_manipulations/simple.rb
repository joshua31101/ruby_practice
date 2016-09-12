def ssn(ssn)
  print "Enter your Korean SSN: "
  social_num = gets.chomp
  puts ssn(social_num)
  ssn.gsub!(/\d\d\d\d\d\d-\d\d\d\d\d\d\d/, "******-*******")
end

puts "Hey man\nwake up man!".gsub(/^wake up/, "go to sleep!")
