#i guss this is the main file that runs everything
require_relative 'commands'

quit = false


puts "Type \"quit\" to quit"
while !quit do
  print "> " #yay, looks nice now
  input = gets.chomp.downcase
  if input == "quit"
    quit = true
  else
    if Command.list.include? input
      Command.ref[input].execute
    else
      puts "Commond not recognized, please try again"
    end
  end
  
end