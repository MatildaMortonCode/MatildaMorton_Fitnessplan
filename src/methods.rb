   # First menu naviagtion
   def goal_list
    puts "1. Loose Weight"
    puts "2. Build muscle"
    puts "3. Increase energy"
    goal = gets.chomp.to_i

while goal != 1 or 2 or 3

if goal == 1   
    puts "Loosing weight something something"
elsif goal == 2
    puts "Let's get strong together!"
elsif goal == 3
    puts "Energy is important ect ect"
else
    puts "that's not a valid number, please add a number only"
    break
end
end
end


