require "colorize"
require "rainbow"
require "down"
require "fileutils"
require "mail"




#Welcome Message


puts "ADD - Welcome Message"

puts "Are you ready to take on the BodyFit challenge for 2022. To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?"

sleep (1)    
 
    def menu_option
        puts "1. Loose Weight"
        puts "2. Build muscle"
        puts "3. Increase energy"
        end

g = 0

while g == 0
menu_option
print "Enter your goal using 1, 2 or 3: "   
goal = gets.chomp.to_i
             

if goal == 1   
puts "Loosing weight something something"
                g = 1
                goal = "Loose Weight"

        elsif  goal == 2        
                puts "Let's get strong together!"
                g = 1
                goal = "Build Muscle"
        
        elsif goal == 3
                puts "Energy is important ect ect" 
                goal = "Increase Energy"
                g = 1 
        else
                puts "invalid"
                g = 0

end
end

#system "clear"


puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight"

puts "It is useful to consider BMI alongside waist circumference, as waist measurement helps to assess risk by measuring the amount of fat carried around your middle.

BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition."

#Calculate BMI HERE

b = 0
while b == 0
puts "Were you at born as female, answer yes or no"
gender = gets.chomp.to_s.downcase

print "Enter you height (cm): "
height = gets.to_i

print "Enter you weight (kgs): "
kegs = gets.to_i

cm_to_m = height / 100
yourbmi = kegs / cm_to_m

if yourbmi <= 18.5 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 1\n"
b = 1

elsif yourbmi == 18.6..24.9 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 2 \n"
b = 2

elsif yourbmi == 25..29.9 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 3 \n"
b = 3

elsif yourbmi >= 31 && gender == "female"
print "Your BMI is #{yourbmi} this means you are weight class 4 \n"
b = 4

elsif yourbmi <= 18.5 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 5 \n"
b = 5

elsif yourbmi == 18.6..24.9 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 6 \n"
b = 6

elsif yourbmi == 25..29.9 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 7 \n"
b = 7

elsif yourbmi >= 30 && gender == "male"
print "Your BMI is #{yourbmi} this means you are weight class 8 \n"
b = 8

else
    puts "Error"

end 
end


#Calculate Fitness level

puts "Great work! Now how would you describe your fitness level?"

f = 0
while f == 0 
def fitness_level
    puts "1. Low"
    puts "2. Medium"
    puts "3. High"
    fitness = gets.chomp.to_i

if fitness == 1   
        puts "Loosing weight something something"
        f = 1
        fitness = "low"
elsif fitness == 2
        puts "Let's get strong together!"
        f = 2
        fitness = "medium"
elsif fitness == 3
        puts "Energy is important ect ect"
        f = 3
        fitness = "high"
else
        puts "That's not a valid number, please add a number only"
        f = 0

end
end
end             


def final_confirmation
        puts "The final outcome of your selection is that you want to #{goal}, your current BMI is #{yourbmi}. You said your fitness level is #{fitness}. Are these selections correct?"

        answer = gets.chomp
        
        if answer = yes
                puts"great!"
        else answer = no 
                "well you messed up, let's try again"
        end
end

#COME BACK TO THIS ONCE ANSWER FROM JAIRO


fitness_level = 0

#NUMBERS FOR FEMALES
#If they are female underwieght and have a low fitness level
if b = 1 && f = 1
        fitness_level = 1

 #If they are female underwieght and have a low fitness level       
elsif b = 1 && f = 2
        fitness_level = 2

#If they are female underwieght and have a low fitness level
elsif b = 1 && f = 3
        fitness_level = 3  

#If they are female healthy weight and have a low fitness level
elsif b = 2 && f = 1
        fitness_level = 4
#if they are female healthy weight and have a medium fitness level
elsif b = 2 && f = 2
        fitness_level = 5
#if they are female healthy weight and have a high fitness level
elsif b = 2 && f = 3
        fitness_level = 6

#if they are female overweight and have a low fitness level
elsif b = 3 && f = 1
        fitness_level = 7
#If they are female overweight and have a medium fitness level
elsif b = 3 && f = 2
        fitness_level = 8    
#If they are female overweight and have a high fitness level
elsif b = 3 && f = 3
        fitness_level = 9
        #if they are female obese and have a low fitness level
elsif b = 4 && f = 1
        fitness_level = 10
#If they are female obese and have a medium fitness level
elsif b = 4 && f = 2
        fitness_level = 11  
#If they are female obese and have a high fitness level
elsif b = 4 && f = 3
        fitness_level = 12



#NUMBERS FOR MALES
#If they are male underwieght and have a low fitness level
elsif b = 5 && f = 1
        fitness_level = 13

 #If they are male underwieght and have a low fitness level       
elsif b = 5 && f = 2
        fitness_level = 14

#If they are male underwieght and have a low fitness level
elsif b = 5 && f = 3
        fitness_level = 15  

#If they are male medium weight and have a low fitness level
elsif b = 6 && f = 1
        fitness_level = 16

#if they are male medium weight and have a medium fitness level
elsif b = 6 && f = 2
        fitness_level = 17

#if they are male medium weight and have a high fitness level
elsif b = 6 && f = 3
        fitness_level = 18

#if they are male overweight and have a low fitness level
elsif b = 7 && f = 1
        fitness_level = 19
#If they are male overweight and have a medium fitness level
elsif b = 7 && f = 2
        fitness_level = 20     
#If they are male overweight and have a high fitness level
elsif b = 7 && f = 3
        fitness_level = 21

#if they are male obese and have a low fitness level
elsif b = 8 && f = 1
        fitness_level = 22
#If they are male obese and have a medium fitness level
elsif b = 8 && f = 2
        fitness_level = 23    
#If they are male obese and have a high fitness level
else b = 8 && f = 3
        fitness_level = 24
end



puts fitness_level
#Final output/outcome - Calculates a solution based of the answers given. 
def print_out
if goal = 1 && fitness_level = 1
    puts "You want to loose weight, but you are not a vey active person. It seems you also don't have much weight to loose. Perhaps you should seek professional support for your goals. I have added a list of support lines "
    tempfile = Down.download("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 1 && fitness_level == 2
    puts "Second fitness option, your file will download soon" 
    tempfile = Down.download("https://s3.amazonaws.com/com.twilio.prod.twilio-docs/images/test.original.jpg")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")


else 
    puts "There is an error with your options, go back and try again"
end   
end

print_out

exit
