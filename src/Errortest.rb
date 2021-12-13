puts "Great work! Now how would you describe your fitness level?"

f = 0
while f = 0 
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