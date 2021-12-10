require 'colorize'
require 'rainbow'

#Welcome Message

puts "Welcome Message"

puts "Are you ready to take on the BodyFit challenge for 2022. To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?"

# First menu naviagtion
def goal_list
        puts "1. Loose Weight"
        puts "2. Build muscle"
        puts "3. Increase energy"
        goal = gets.chomp.to_i
    
    if goal == 1   
            puts "Loosing weight something something".blue
    elsif goal == 2
            puts "Let's get strong together!"
    elsif goal == 3
            puts "Energy is important ect ect"
    else
            puts "that's not a valid number, please add a number only"
    
    end
end

goal_list
sleep(2)


print "Thanks for that! What is your current weight?"
def person_weight
weight = gets.chomp.to_i
end

person_weight

puts "Great work! Now how would you describe your fitness level?"


def fitness_level
    puts "1. Low"
    puts "2. Medium"
    puts "3. High"
    fitness = gets.chomp.to_i

if fitness == 1   
        puts "Loosing weight something something"
elsif fitness == 2
        puts "Let's get strong together!"
elsif fitness == 3
        puts "Energy is important ect ect"
else
        puts "that's not a valid number, please add a number only"
        return

end
end

fitness_level


def print_out
if goal = 1 && weight <= 40
    puts "You want to loose weight, but you are not a vey active person. It seems you also don't have much weight to loose. Perhaps you should seek professional support for your goals."

elsif goal == 1 && weight => 41
    puts "Second fitness option" 

else 
    puts "There is an error with your options, go back and try again"
end   
end

print_out


