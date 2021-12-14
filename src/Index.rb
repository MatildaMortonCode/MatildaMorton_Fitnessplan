require "colorize"
require "rainbow"
require "down"
require "fileutils"
require "mail"
require "tty-prompt"
require_relative ("artmessages")

prompt = TTY::Prompt.new

#Welcome Message
logo

puts "" 

def scroll(string)
        string.each_char do |x|
            print x.colorize(:yellow)
            sleep(0.04)
          end
        end


scroll ("Are you ready to take on the BodyFit challenge for 2022?")

sleep (1)


menu = [
        "Loose_Weight",
        "Build_muscle",
        "Increase_energy"
        ]


prompt.select("To get started, we are going to need to get some details from yourself. We will look at the goals you want to achieve and provide you with a custom plan that is just right for you! First we need to know what your goal is, do you want to Loose weight, Build muscle or Increase energy?", menu)   

case 
when menu = "Loose_Weight" 
  puts "It's great to focus on loosing weight! But remember, when we start becoming healthier and excercise we also naturally gain muscle, so when starting your journey, take lots of pictures of your progress rather than focusing on the scales. Don't worry, your plan will still be custom to your weight loss goal!"
                goal_type = "Loose Weight"
                goal = 1

when  menu = "Build_muscle"       
  puts "You are my people! Building muscle not only makes you feel good, it also means you look good! The more muscle you have, the more your body breaks down fat. We will make sure your custom plan has lots of weights to keep you excited!"
  goal_type = "Build Muscle"
  goal = 2
        
when menu = "Increase_energy" 
  puts "Uh! I feel you! There is nothing worse than being tired. How great is it that we can do something about this by filling out body with the energy and nutrients it needs to feel better. If this is your goal, it's important to also go get your bloods tested to ensure you are not Iron deficent. Iron deficiency is the most common nutritional disorder affecting about 20-25% of the world's population. It's a real drain! Trust me!" 
  goal_type = "Increase Energy"
  goal = 3
end

#system "clear"


puts "Thanks for that! Now we are going to calculate your Body Mass Index, this is calculated off your height and weight"

puts "It is useful to consider BMI alongside waist circumference, as waist measurement helps to assess risk by measuring the amount of fat carried around your middle.

BMI is a useful measurement for most people over 18 years old. But it is only an estimate and it doesn’t take into account age, ethnicity, gender and body composition. Like we mentioned earlier, don't get too focused on BMI ro the scales when starting and take lots of before and afters, this just helps us to create a custom plan for you! We will also take into consideration your current excercise levels."

#Calculate BMI HERE

b = 0
while b == 0
puts "Were you at born as Female or Male? Enter Female or Male: "
gender = gets.chomp.to_s.downcase

print "Enter you height (cm): "
height = gets.to_i

print "Enter you weight (kgs): "
kegs = gets.to_i

cm_to_m = height / 100
yourbmi = kegs / cm_to_m

if yourbmi <= 18.5 && gender == "female"
print "Your BMI is #{yourbmi}\n"
b = 1

elsif yourbmi == 18.6..24.9 && gender == "female"
print "Your BMI is #{yourbmi}\n"
b = 2

elsif yourbmi == 25..29.9 && gender == "female"
print "Your BMI is #{yourbmi}\n"
b = 3

elsif yourbmi >= 31 && gender == "female"
print "Your BMI is #{yourbmi}\n"
b = 4

elsif yourbmi <= 18.5 && gender == "male"
print "Your BMI is #{yourbmi}\n"
b = 5

elsif yourbmi == 18.6..24.9 && gender == "male"
print "Your BMI is #{yourbmi}\n"
b = 6

elsif yourbmi == 25..29.9 && gender == "male"
print "Your BMI is #{yourbmi}\n"
b = 7

elsif yourbmi >= 30 && gender == "male"
print "Your BMI is #{yourbmi}\n"
b = 8

else
    puts "There seems to be an error with the informaiton you have provided, please enter this again and ensure you check the instructions on each input"

end 
end


#Calculate Fitness level

puts "Great work! Now how would you describe your fitness level?"

f = 0
while f == 0 
    puts "1. Low"
    puts "2. Medium"
    puts "3. High"
    fitness = gets.chomp.to_i

if fitness == 1   
        puts "It's never to late to start! We know it's hard to excercise when you are out of practice, but you will never regret it! We will start slow I promise. "
        f = 1
        fit_level = "low"
        #fitness = "low"
elsif fitness == 2
        puts "Great! We have a starting point! Let's build upon what you already do and take it to the next level!"
        f = 2
        fit_level = "medium"
        #fitness = "medium"
elsif fitness == 3
        puts "Wow! Seems like we are really going to need to step up our plan and give you a real hard challenge.  It's too late to change your selection now. Get ready for some extra hard workouts!"
        f = 3
        fit_level = "high"
        #fitness = "high"
else
        puts "That's not a valid number, please add a number only"
        f = 0

end
end         


        puts "The final outcome of your selection is that you want to #{goal_type}, your current BMI is #{yourbmi}. You said your fitness level is #{fit_level}. Are these selections correct?"

        answer = gets.chomp.to_s
        
        if answer == "yes"
                puts"great!"
        else answer == "no" 
                "well you messed up, let's try again"
        end




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


#Final output/outcome - Calculates a solution based of the answers given. 

# For real program, the download link would be different per else if - for assessment purposes, they are only different per goal selected, rather than having 70+ different documents. 
     

#If user selected loose weight - Refer to conditional.rb for fitness_level number system
if goal == 1 && fitness_level == 1
    puts "You want to loose weight, but you are not a vey active person. It seems you also don't have much weight to loose. Perhaps you should seek professional support for your goals. I have added a list of support lines "
    tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 1 && fitness_level == 2
    puts "Second fitness option, your file will download soon" 
    tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
    FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 1 && fitness_level == 3
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 4
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 5
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 6
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 7
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 8
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 9
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 10
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 11
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 12
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 13
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 14
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 15
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 16
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 17
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 18
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 19
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 20
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 21
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 22
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 23
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")
elsif goal == 1 && fitness_level == 24
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Loose-weight.%20pdf.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

#If user selected Gain muscle 

elsif goal == 2 && fitness_level == 1
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 2
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 3
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 4
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 5
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 6
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 7
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 8
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 9
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 10
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 11
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 12
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 13
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 14
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 15
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 16
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 17
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 18
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 19
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")


elsif goal == 2 && fitness_level == 20
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 21
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 22
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level == 23
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 2 && fitness_level ==24
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Build-muscle-plan.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

# If user selected gain energy

elsif goal == 3 && fitness_level == 1
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 2
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 3
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 4
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 5
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 6
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 7
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 8
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 9
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 10
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 11
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 12
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 13
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 14
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 15
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 16
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 17
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 18
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 19
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")


elsif goal == 3 && fitness_level == 20
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 21
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 22
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level == 23
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")
        FileUtils.mv(tempfile.path, "./#{tempfile.original_filename}")

elsif goal == 3 && fitness_level ==24
        puts "Second fitness option, your file will download soon" 
        tempfile = Down.download("https://github.com/MatildaMortonCode/MatildaMorton_Fitnessplan/blob/main/docs/Energy.pdf")

else 
    puts "There is an error with your options, go back and try again"
end   

puts "enter email: "
email = gets.chomp

mail.deliver! 

exit
