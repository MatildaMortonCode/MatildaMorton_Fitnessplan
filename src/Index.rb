require "colorize" #colours text
require "fileutils" #supports picture download at end
require "mail" #Supports email to send with attachment
require "tty-prompt" #currently used for list selection
require_relative "artmessages.rb" 
require_relative "mail.rb"
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
            sleep(0.02)
          end
        end


scroll ("Are you ready to take on the BodyFit challenge for 2022?\n")

#sleep (1)
   
        testing = prompt.select("To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?") do |menu|
                menu.choice 'loose weight' 
                menu.choice 'build muscle'
                menu.choice 'increase energy' 
            end 
            
            case 
            when testing == "loose weight" 
              puts "It's great to focus on loosing weight! But remember, when we start becoming healthier and excercise we also naturally gain muscle, so when starting your journey, take lots of pictures of your progress rather than focusing on the scales. Don't worry, your plan will still be custom to your weight loss goal!"
                goal_type = "Loose Weight"
                goal = 1
                puts "loose"
            
            when testing == "build muscle"       
              puts "You are my people! Building muscle not only makes you feel good, it also means you look good! The more muscle you have, the more your body breaks down fat. We will make sure your custom plan has lots of weights to keep you excited!"
              goal_type = "Build Muscle"
              goal = 2
              puts "build"
                    
            when testing == "increase energy" 
              puts "Uh! I feel you! There is nothing worse than being tired. How great is it that we can do something about this by filling out body with the energy and nutrients it needs to feel better. If this is your goal, it's important to also go get your bloods tested to ensure you are not Iron deficent. Iron deficiency is the most common nutritional disorder affecting about 20-25% of the world's population. It's a real drain! Trust me!" 
              goal_type = "Increase Energy"
              goal = 3
              puts "increase"
            end




system "clear"


awesome


puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight

It is useful to consider BMI alongside waist circumference, as waist measurement helps to assess risk by measuring the amount of fat carried around your middle.

BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition. Like we mentioned earlier, don't get too focused on BMI ro the scales when starting and take lots of before and afters, this just helps us to create a custom plan for you! We will also take into consideration your current excercise levels."

#Calculate BMI HERE




gender = prompt.select("To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?") do |gender|
        gender.choice "Female"
        gender.choice "Male" 
end 

case
when gender == "Female" 
        gen = "1"
        puts "you are F"
        puts gen
        
when gender == "Male"
        puts "you are M"
        gen = "2"
        puts gen

end


        
b = 0
while b == 0
begin
print "Enter you height (m): "
height = gets.to_f

print "Enter you weight (kgs): "
kegs = gets.to_f

cm_to_square = height * height

yourbmi = kegs / cm_to_square 


rescue StandardError => e
        puts "Your height and weight seem to equal a negative number, this would mean you are not alive! Please enter your details again. Remember it is in cm and kg"
        retry
next
end       
        

if yourbmi <= 18.5 && gen == "1"
puts "Your BMI is #{yourbmi}\n"
b = 1

elsif yourbmi >= 18.6 && yourbmi <25 && gen == "1"
puts "Your BMI is #{yourbmi}\n"
b = 2

elsif yourbmi >= 25 && yourbmi <30 && gen == "1"
print "Your BMI is #{yourbmi}\n"
b = 3

elsif yourbmi >= 30 && gen == "1"
print "Your BMI is #{yourbmi}\n"
b = 4

elsif yourbmi <= 18.5 && gen == "2"
print "Your BMI is #{yourbmi}\n"
b = 5

elsif yourbmi >= 18.5 && yourbmi <= 25 && gen == "2"
print "Your BMI is #{yourbmi}\n"
b = 6

elsif yourbmi >= 25 && yourbmi <= 29.9 && gen == "2"
print "Your BMI is #{yourbmi}\n"
b = 7

elsif yourbmi >= 30 && gen == "2"
print "Your BMI is #{yourbmi}\n"
b = 8

else
    puts "There seems to be an error with the informaiton you have provided, please enter this again and ensure you only add numbers to the input section.\n"
end
end


sleep (5)

system "clear"

fittitle




#Calculate Fitness level

level = prompt.select("So we know how to start your fitness plan, we need to know what level of fitness you are at. Would you have a low, medium or high level of fitness?") do |level|
        level.choice 'Low' 
        level.choice 'Medium' 
        level.choice 'High'
    end  

case 

when level == "Low"  
        puts "It's never to late to start! We know it's hard to excercise when you are out of practice, but you will never regret it! We will start slow I promise. "
        f = 1
        fit_level = "low"
        
when level == "Medium"
        puts "Great! We have a starting point! Let's build upon what you already do and take it to the next level!"
                f = 2
                fit_level = "medium"

        when level == "High"
                puts "Wow! Seems like we are really going to need to step up our plan and give you a real hard challenge.  It's too late to change your selection now. Get ready for some extra hard workouts!"
                f = 3
                fit_level = "high"

end


confirm = prompt.select("The final outcome of your selection is that you want to #{goal_type}, your current BMI is #{yourbmi}. You said your fitness level is #{fit_level}. Are these selections correct?") do |confirm|
        confirm.choice 'Yes, these details are correct' 
        confirm.choice 'No, these details are not correct, I need to start again'
    end  

        
        case 
        
        when confirm == "Yes, these details are correct" 
        puts "great we are just preparing your plan now...beep bop beep"
                
        when confirm == "No, these details are not correct, I need to start again"
              puts "The program will now end, please restart it and try again"
              sleep(2)
             exit
        end
        
system "clear"

fitness_level = numsystem(b,f)
puts fitness_level
puts "Your custom plan will download momentarily, it will contatin information similar to the below!"

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


puts fineout(goal, fitness_level)

system "clear"

goodbye

sleep(2)

exit
