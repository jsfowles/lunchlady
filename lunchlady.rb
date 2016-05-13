require "pry"
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
    @foods.each do |food, info|
      puts "#{food}: $#{info[0]} calories #{info[1]}"
    end
  end
end
mains = Menu.new("Main Menu", @main_dish)
sides = Menu.new("Side Menu", @side_dish)
deserts = Menu.new("Desert Menu", @desert_menu)

mains.display


# puts "***  Welcome to Juan a Burrito  ***"
# puts "   May I take your order please?   "
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
