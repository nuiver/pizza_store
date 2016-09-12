require './storage'

class Kitchen

	def initialize
    @storage = Storage.new
  end


	def order(dish)
	  puts "KITCHEN: Order received for #{dish.name}"
	  puts "I am gonna need some:"
	  dish.ingredients.each do |ingredient| 
	  	puts "#{ingredient.amount} - #{ingredient.name}"
	  end
	  @storage.fetch(dish.ingredients)
	end

end
