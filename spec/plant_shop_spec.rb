require_relative '../plant_size'
require_relative '../plant_difficulty'
require_relative '../plant_light'
require_relative '../plant_print'

describe PlantPrint do
 it 'should return the price of the item' do
 name = "monstera deliciosa"
 price = 55.00
 plant_print = PlantPrint.new(name, price)
 expect(plant_print.price).to eq(price)
 
 
 end
end