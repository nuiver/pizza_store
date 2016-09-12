require './check'

class Waiter

	def initialize(menu, kitchen)
	  @menu = menu
	  @kitchen = kitchen
	  @check = Check.new
	  @serving = true
	end

	def greet_guest
		p "Good day. Welcome to our lovely restaurant."
	end

	def serve_guest   
	  puts "How can I be of service?"
    puts "1. Would you like to order a pizza?"
    puts "2. Would you like to leave?"
    take_order(gets.chomp.to_i)
  end

  def take_order(order_number)
  	case order_number
		  when 1
				list_menu
				order_food(gets.chomp.to_i)
			when 2
			  puts "Your total sum is #{@check.calculate_sum}."
			  puts "Thank you for your visit."
			  @serving = false
		  else
		  	puts "I really don't understand"
		end
	end

	def list_menu
  	@menu.contents.each_with_index { | dish , index | puts "#{index}. #{dish.name}" }
  end

  def order_food(choice)
  	dish = @menu.contents[ choice ]
  	if dish != nil
	  	if @kitchen.order(dish)
	      puts "Dish is on its way"
	      @check.add(dish)
	    else
	      puts "Sorry, this dish is not available"
	    end
	  else
	  	puts "That is not something we serve."
	  end
	end

	def serving?
  	return @serving
	end

end