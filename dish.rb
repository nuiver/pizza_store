class Dish
	
	def initialize(dish_name, ingredients, price)
		@name = dish_name
		@ingredients = ingredients
		@price= price
	end

	def name
  @name
	end

	def ingredients
 	 @ingredients
	end

	def return_value
		@price
	end

end
