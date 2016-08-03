class Waiter

	def initialize(menu)
	  @menu = menu  
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
		  when 2
		  puts  "Thank you for your visit"
		  else
		  puts  "I really don't understand"
		end
	end

	def list_menu
  	@menu.contents.each do |dish|
    	p "#{dish.name}"
  	end
  end

end