def cheatsheet  
  cheatsheet_menu = { 1 => "Command Line", 2 => "Search", 3 => "Exit"} 
    puts "CHEATSHEET"
    cheatsheet_menu.each do |key, value|
      puts "#{key}) #{value}"
    end 
    puts "***Make A Selection"  
end 

def command_line
  while(true) do
    command_line_menu = { 1 => "cd", 2 => "mkdir", 3 => "rm", 4 => "ls", 5 => "Main Menu" }
    puts "COMMAND LINE"
    command_line_menu.each do |key, value|
      puts "#{key}) #{value}"  
    end 
    puts "***Make A Selection***"
    command_line_choice = gets.strip.to_i

    if command_line_choice == 5
      main
    elsif command_line_menu.has_key?(command_line_choice)
      command_name = command_line_menu[command_line_choice]
      puts `man #{command_name}`
    else
      puts "LOLz try again"
    end
  end   
end

def enter_search
  puts "Enter Search Below"
  search_command = gets.strip 
  puts `man #{search_command}` 
end 

def exit_menu
  exit (0)
end 

def main
  while(true) do
    cheatsheet
    menu_choice = gets.strip.to_i
    case menu_choice
      when 1 
        command_line
      when 2 
        enter_search
      when 3 
        exit_menu
    else 
      puts "Let's try something that works"
  end
end 
end

main
