#Menu class
class Menu
  # highest number of option
  # input/output
  # menu choice
  attr_reader :quit
  def initialize(*menu_args) # all variables are contain in an array
    @menu_args = menu_args
    @quit = @menu_args.length
  end

  def get_menu_choice
    # print menu
    @menu_args.each_with_index do |item,index|
      puts "#{index + 1}. #{item}"
    end
    # ask for user choice
    print "Enter your choice "
    user_choice = gets.to_i
    # return user choice
    return user_choice
  end

end

menu = Menu.new(
    "Load character1",
    "Load character2",
    "Fight",
    "Quit")
#puts menu.quit
#puts menu.get_menu_choice
while((choice = menu.get_menu_choice) != menu.quit )
  case choice
    when 1
      puts "loading character 1"
    when 2
      puts "loading character 2"
    when 3
      puts "Fight"
  end
end

=begin
user_choice = 0
while user_choice != 4
  puts"1. Load character 1"
  puts"2. Load character "
  puts"3. Fight"
  puts"4. Quit"

  user_choice = gets.to_i

  case user_choice
    when 1
      puts "loading character 1"
    when 2
      puts "loading character 2"
    when 3
      puts "Fight"
  end
end
=end