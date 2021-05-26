require_relative '../plant_specks'
require_relative '../plant_shop'
require_relative '../plant_list'



# test of plant_print
describe 'plant_print' do
 it 'should return the price of the item' do
 name = "monstera deliciosa"
 price = 55.00
 plant_print = plant_print.new(name, price)
 expect(plant_print.price).to eq(price)
 

 end
end

describe "PlantSpecks" do
 context "#size user size of plant" do
 before do
  @plant_shop = PlantSpecks.new('new_user')

#test it creates a new file
 end
 it 'should create a new file' do
  @plant_shop.size
  expect(File.exist?('./PlantSpecks/new_user.txt')).to be true
end

#test the file is empty
it 'should be empty' do
 expect(File.size('./PlantSpecks/new_user.txt')).to eq (0)
end

after(:context) do
 File.delete('./PlantSpecks/new_user.txt')
end
end
end