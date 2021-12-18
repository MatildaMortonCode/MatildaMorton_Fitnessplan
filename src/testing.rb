require_relative 'final.rb'
require_relative 'fitlevelnum.rb'
require_relative 'fitplan.rb'
require_relative 'Index.rb'



RSpec.describe "Test class contains data" do
    it "should have data in all fields of the class items" do
        plantitle = "weight loss plan"
        weeklyfood = "test"
        shoppinglist = "test"
        exerciseplan = "test"
        plan1 = Fitplan.new(plantitle, weeklyfood, shoppinglist, exerciseplan)
        expect(plan1.plantitle).to eq(plantitle)
        expect(plan1.weeklyfood).to eq(weeklyfood)
    end
end
