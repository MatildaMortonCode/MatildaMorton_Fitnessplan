class Fitplan
attr_accessor :plantitle, :weeklyfood, :shoppinglist, :exerciseplan
def initialize (plantitle, weeklyfood, shoppinglist, exerciseplan)
    @plantitle = plantitle
    @weeklyfood = weeklyfood
    @shoppinglist = shoppinglist
    @excerciseplan = exerciseplan
end
end

plan1 = Fitplan.new("weight loss plan", "Day 1 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 2 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 3 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 2 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 4 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 5 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 6 - Meal 1, Snack, Meal 2, Snack, Meal 3" "Day 7 - Meal 1, Snack, Meal 2, Snack, Meal 3", "Ingredient, Ingredient, Ingredient", "Day 1 - Exercise 1")

puts plan1.plantitle
puts plan1.weeklyfood
puts plan1.shoppinglist
puts plan1.exerciseplan