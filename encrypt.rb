require "./lib/enigma"
files = gets.chomp
split_files = files.split(' ')

enigma = Enigma.new
@encrypted_data = {}

File.open(split_files.first, "r") do |file|
  message = file.readline()

  @encrypted_data=enigma.encrypt(message)
end

 File.open(split_files.last, "a") do |file|
  # require 'pry'; binding.pry
   file.write("#{@encrypted_data[:encryption]} #{@encrypted_data[:key]} #{@encrypted_data[:date]} ")

   puts "Created #{split_files.last} with the key #{@encrypted_data[:key]} and date #{@encrypted_data[:date]}"
 end
