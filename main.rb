#i guss this is the main file that runs everything


quit = false

Commands = ["dig", "cut"]

while !quit do
  print "> " #yay, looks nice now
  input = gets.chomp.downcase
  if input == "quit"
    quit = true
  else
    if Commands.include? input
      puts "Command recognized!"
    else
      puts "Commond not recognized, please try again"
    end
  end
  
end