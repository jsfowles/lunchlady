
#prompt user for selection of main dishes
#allow user to select a main dishes
#allow user to add 2 side dishes
#read back the entire order
#prints out the $$$ total
#
@main_dish = {"Burrito": [3, 300], "Taco": [2, 200], "Quesadilla": [1, 100]}
@side_dish = {"Beer": [3, 300], "Chips & Salsa": [2, 200], "Salad": [1, 100]}
@desert_menu = {"cake": [3, 500], "pie": [2, 400]}

class Menu
  attr_accessor :name, :foods
  def initialize(name, foods)
    @name = name
    @foods = foods
  end

  def display
    puts "**** #{name} ****"
    i = 1
    @foods.each do |food, info|
      puts "#{i}) #{food}: $#{info[0]} calories #{info[1]}"
      i += 1
    end
  end

  def add(name, price, calories)
    @foods[name] = [price, calories]
  end
end
main = Menu.new("Main Menu", @main_dish)
side = Menu.new("Side Menu", @side_dish)
desert = Menu.new("Desert Menu", @desert_menu)

@item_total = []

def welcome_menu
  puts "***  Welcome to Juan a Burrito  ***"
  puts "What menu would you like to see"
  puts " 1) Entrees"
  puts " 2) Sides"
  puts " 3) Deserts"
  welcome_input = gets.strip.to_i

   case welcome_input
   when 1
     welcome_main = Menu.new("Main Menu", @main_dish)
     puts `clear`
     welcome_main.display
     main_input = gets.strip.to_i
      if main_input == 1
        puts @main_dish[0]
      
      end
   when 2
     welcome_side = Menu.new("Side Menu", @side_dish)
     puts `clear`
     welcome_side.display
   when 3
     welcome_deseret = Menu.new("Side Menu", @desert_menu)
     puts `clear`
     welcome_deseret.display
   end
 end

 def main_input
 end
 welcome_menu
 # main.display
 # side.display
 # desert.display





#
#
# puts "1) Burrito                  $3.00"
# puts "2) Taco                     $2.00"
# puts "3) Quesadilla               $1.00"
#
# def display_side
#   puts "Side Menu"
#   puts "1) Beer                     $3.00"
#   puts "2) Chips & Salsa            $2.00"
#   puts "3) Salad                    $1.00"
# end
