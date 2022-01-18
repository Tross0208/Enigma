require "./lib/enigma"
data = gets.chomp
split_data = data.split(' ')

enigma = Enigma.new
@decrypted_data = {}

File.open(split_data.first, "r") do |file|
  message = file.readline().split
  #require 'pry'; binding.pry
  @decrypted_data=enigma.decrypt(message[0], split_data[2], split_data[3])
end

File.open(split_data[1], "w") do |file|
  file.write("#{@decrypted_data[:encryption].chomp} #{@decrypted_data[:key]} #{@decrypted_data[:date]} ")
  puts "Created #{split_data[1]} with the key #{@decrypted_data[:key]} and date #{@decrypted_data[:date]}"
end
 #
