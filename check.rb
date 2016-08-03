class Check

	def initialize
		@items = []
	end

	def add(item)
   @items << item
  end

  def calculate_sum
  	@sum = 0
  	@items.each { |item| @sum += item.return_value }
  	@sum
  end

end