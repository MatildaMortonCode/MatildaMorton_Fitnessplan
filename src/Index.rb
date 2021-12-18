require "colorize" #colours text
require "fileutils" #supports picture download at end
require "tty-prompt" #currently used for list selection
require "tty-progressbar"
require "down" #Supports picture download at end
require_relative "artmessages.rb" 
require_relative "fitplan.rb"
require_relative "final.rb"
require_relative "fitlevelnum.rb"

prompt = TTY::Prompt.new

#Welcome Message
logo

puts "" 

def scroll(string)
        string.each_char do |x|
            print x.colorize(:yellow)
            sleep(0.05)
          end
        end


scroll ("Are you ready to take on the BodyFit challenge for 2022?\n \n")

#sleep (1)
   #Welcome message continued - This dislays the text in a graphic manner
        mainmen = prompt.select("To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?\n \n") do |menu|
                menu.choice "loose weight" 
                menu.choice "build muscle"
                menu.choice "increase energy" 
            end 
            
#UI  - clearer to read, empty puts
puts ""

#Calculates the goal number for use in final.rb and also provides user with information about thier choice. Supports confirmation of the choice they have made. 
            case 
            when mainmen == "loose weight" 
                puts ""
              puts "It's great to focus on loosing weight! But remember, when we start becoming healthier and excercise we also naturally gain muscle, so when starting your journey, take lots of pictures of your progress rather than focusing on the scales. Don't worry, your plan will still be custom to your weight loss goal!\n \n"
                goal = 1
            
            when mainmen == "build muscle"  
                puts ""     
              puts "You are my people! Building muscle not only makes you feel good, it also means you look good! The more muscle you have, the more your body breaks down fat. We will make sure your custom plan has lots of weights to keep you excited!\n \n"
              goal = 2
                    
            when mainmen == "increase energy" 
                puts ""
                puts "Uh! I feel you! There is nothing worse than being tired. How great is it that we can do something about this by filling out body with the energy and nutrients it needs to feel better. If this is your goal, it's important to also go get your bloods tested to ensure you are not Iron deficent. Iron deficiency is the most common nutritional disorder affecting about 20-25% of the world's population. It's a real drain! Trust me! \n \n" 
              goal = 3

            end

            #User UI, better experience 
            bar = TTY::ProgressBar.new("loading next [:bar] :elapsed :percent", total: 30)
            30.times do
              sleep(0.2)
              bar.advance
            end

# Graphic intro to next step - refer to artmessages.rb
awesome


puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight

It is useful to consider BMI alongside waist circumference, as waist measurement helps to assess risk by measuring the amount of fat carried around your middle.

BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition. Like we mentioned earlier, don't get too focused on BMI ro the scales when starting and take lots of before and afters, this just helps us to create a custom plan for you! We will also take into consideration your current excercise levels.\n"

#Asks user for gender and assigns a number to this for use later

gender = prompt.select("So your plan is tailered for you, please let us know if you are female or male from birth.\n") do |gender|
        gender.choice "Female"
        gender.choice "Male" 
end 

case
when gender == "Female" 
        gen = "1"
        
when gender == "Male"
        gen = "2"

end


#Calculates BMI     
b = 0
while b == 0
begin
puts""
print "Enter you height (Centremeters): "
height = gets.to_f

puts ""
print "Enter you weight (Kilograms): "
kegs = gets.to_f

cm_to_m = height / 100

m_to_square2 = cm_to_m * cm_to_m

yourbmi = kegs / m_to_square2

yourbmi = yourbmi.to_i


rescue StandardError => e
        puts "Your have either entered a value other than a number or your numbers are too low for be a real BMI. Please enter your details again. Remember it is in cm and kg\n"
        retry
next
end   

#Combines the options from BMI calculation and gender option to produce a end key that represents both. Used later in fitlevelnum.rb
        
if yourbmi <=13
        puts "Your BMI has calculates as #{yourbmi}, this is too low or you have entered a value other than a standard number. Please check what you are inputting is correct and try again\n"

elsif yourbmi >= 13.1 && yourbmi <= 18.5 && gen == "1"
puts "Your BMI is #{yourbmi}, for a female this means your are currently already underweight\n"
b = 1

elsif yourbmi >= 18.6 && yourbmi <25 && gen == "1"
puts "Your BMI is #{yourbmi}, for a female this is a healthy weight\n"
b = 2

elsif yourbmi >= 25 && yourbmi <30 && gen == "1"
print "Your BMI is #{yourbmi}, for a female this is overweight\n"
b = 3

elsif yourbmi >= 30 && yourbmi <=205 && gen == "1"
print "Your BMI is #{yourbmi}, for a female this is classified as obese\n"
b = 4

elsif yourbmi >= 13.1 && yourbmi <= 18.5 && gen == "2"
print "Your BMI is #{yourbmi}, for a male this means you are currently already underweight\n"
b = 5

elsif yourbmi >= 18.5 && yourbmi <= 25 && gen == "2"
print "Your BMI is #{yourbmi}, for a male this means you are at a healthy weight\n"
b = 6

elsif yourbmi >= 25 && yourbmi <= 29.9 && gen == "2"
print "Your BMI is #{yourbmi}, for a male this means you are at currently classified as overweight\n"
b = 7

elsif yourbmi >= 30 && yourbmi <=205 && gen == "2"
print "Your BMI is #{yourbmi}, for a male this means you are classified as obese or morbidly obese\n"
b = 8

elsif yourbmi >= 205.1 && gen == "2" or gen == "1"
        print "You have entered a number higher that the largest person recorded. Unless you are setting a world record, please try again."

else
    puts "There seems to be an error with the informaiton you have provided, please enter this again and ensure you only add numbers to the input section.\n"
end
end


sleep (5)


#ASCII title -refer to artmessages.rb
fittitle

#Asks user to select thier fitenss level, then assigns a number to fit level to be combined in fitlevelnum.rb

level = prompt.select("So we know how to start your fitness plan, we need to know what level of fitness you are at. Would you have a low, medium or high level of fitness?\n") do |level|
        level.choice 'Low' 
        level.choice 'Medium' 
        level.choice 'High'
    end  

case 

when level == "Low"  
        puts "It's never to late to start! We know it's hard to excercise when you are out of practice, but you will never regret it! We will start slow I promise.\n "
        f = 1

        
when level == "Medium"
        puts "Great! We have a starting point! Let's build upon what you already do and take it to the next level!\n"
                f = 2

        when level == "High"
                puts "Wow! Seems like we are really going to need to step up our plan and give you a real hard challenge.  It's too late to change your selection now. Get ready for some extra hard workouts!\n"
                f = 3

end

#Uers has final check of thier selection and can confirm what they have entered, if they have entered something incorrect, then they have the option to terminate and re-run the program. I have selected a terminate approach to avoid errors.

confirm = prompt.select("The final outcome of your selection is that you want to #{mainmen}, your current BMI is #{yourbmi}. You said your fitness level is #{level}. Are these selections correct?\n") do |confirm|
puts""
        confirm.choice 'Yes, these details are correct' 
        puts ""
        confirm.choice 'No, these details are not correct, I need to start again'
        
    end  

        
        case 
        
        when confirm == "Yes, these details are correct" 

                
        when confirm == "No, these details are not correct, I need to start again"
              puts "The program will now end, please restart it and try again"
              sleep(1)
              puts goodbye
              sleep(2)
             exit
        end
        
system "clear"

#Fitness level is not an actual calculated level, it's simply a combination of variables that provide a key number depaending on what the user has imputted. Refer to fitlevelnum.rb
fitness_level = numsystem(b,f)
puts fitness_level
puts "Your custom plan will download momentarily, it will contatin information similar to the below!"


#This was just to I could show use of a class - EXAMPLE ONLY
plan1 = Fitplan.new("weight loss plan", "Day 1" "Meal 1, Snack, Meal 2, Snack, Meal 3 " "Day 2 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 3 - Meal 1, Snack, Meal 2, Snack, Meal 3 "  "Day 2 - Meal 1, Snack, Meal 2, Snack, Meal 3 " "Day 4 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 5 - Meal 1, Snack, Meal 2, Snack, Meal 3 " "Day 6 - Meal 1, Snack, Meal 2, Snack, Meal 3 " "Day 7 - Meal 1, Snack, Meal 2, Snack, Meal 3 ", "Ingredient, Ingredient, Ingredient", "Day 1 - Exercise 1")


puts ""
puts plan1.plantitle.colorize(:red)
puts ""
puts plan1.weeklyfood.colorize(:magenta)
puts ""
puts plan1.shoppinglist.colorize(:yellow)
puts ""
puts plan1.exerciseplan.colorize(:blue)
puts ""

#This is the final outcome after the user has agreed that thier details are correct. Refer to final.rb
puts fineout(goal, fitness_level)



#User experience finishing so they know the program has ended. 

bar = TTY::ProgressBar.new("Downloading and closing program [:bar] :elapsed :percent", total: 30)
30.times do
  sleep(0.2)
  bar.advance
end

sleep(1)


puts goodbye

sleep(1)

exit
