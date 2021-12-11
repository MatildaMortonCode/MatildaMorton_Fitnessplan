require "colorize"
require "rainbow"
require "down"
require "fileutils"

#Welcome Message


puts "Welcome Message"

puts "Are you ready to take on the BodyFit challenge for 2022. To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?"


 
    def menu_option
        puts "1. Loose Weight"
        puts "2. Build muscle"
        puts "3. Increase energy"
        end

a = 0

while a == 0
menu_option
print "Enter your goal using 1, 2 or 3: "   
goal = gets.chomp.to_i
             

if goal == 1   
puts "Loosing weight something something"
                a = 1

        elsif  goal == 2        
                puts "Let's get strong together!"
                a = 2
        
        elsif goal == 3
                puts "Energy is important ect ect" 
                a = 3  
        else
                puts "invalid"
                a = 0

end
end

    

puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight"

#Calculate BMI HERE

print "Enter you height (cm): "
height = gets.to_f

print "Enter you weight (kgs): "
kegs = gets.to_f

cm_to_m = height / 100
yourbmi = kegs / cm_to_m
print "Your BMI is #{yourbmi} this means you are ADD BMI WEIGHT HERE\n"

#Calculate Fitness level

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
        puts "That's not a valid number, please add a number only"

end
end

fitness_level

#Final output/outcome - Calculates a solution based of the answers given. 
def print_out
if goal = 1 && fitness = 1
    puts "You want to loose weight, but you are not a vey active person. It seems you also don't have much weight to loose. Perhaps you should seek professional support for your goals. I have added a list of support lines "
    tempfile = Down.download("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 1 && fitness == 2
    puts "Second fitness option, your file will download soon" 
    tempfile = Down.download("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")


else 
    puts "There is an error with your options, go back and try again"
end   
end

print_out

exit
