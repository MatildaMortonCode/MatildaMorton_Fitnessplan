
require_relative ".index.rb"

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
