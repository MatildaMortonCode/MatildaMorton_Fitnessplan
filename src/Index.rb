require "colorize"
require "rainbow"
require "down"
require "fileutils"

#Welcome Message


puts "ADD - Welcome Message"

puts "Are you ready to take on the BodyFit challenge for 2022. To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?"

sleep (1)    
 
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

#system "clear"


puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight"

puts "It is useful to consider BMI alongside waist circumference, as waist measurement helps to assess risk by measuring the amount of fat carried around your middle.

BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition."

#Calculate BMI HERE

puts "Were you at born as female, answer yes or no"
gender = gets.chomp.to_s

b = 0
while b == 0

print "Enter you height (cm): "
height = gets.to_i

print "Enter you weight (kgs): "
kegs = gets.to_i

cm_to_m = height / 100
yourbmi = kegs / cm_to_m

if yourbmi <= 20 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 1\n"
b = 1

elsif yourbmi == 21..30 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 2 \n"
b = 1

elsif yourbmi == 31..35 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 3 \n"
b = 1

elsif yourbmi >= 35 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 4 \n"
b = 1

elsif yourbmi <= 20 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 5 \n"
b = 1

elsif yourbmi == 21..30 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 6 \n"
b = 1

elsif yourbmi == 31..35 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 7 \n"
b = 1

elsif yourbmi >= 35 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 8 \n"
b = 1

else
    puts "Error"

end 
end

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
