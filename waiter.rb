class Waiter

	def greet_guest
		p "Good day. Welcome to our lovely restaurant."
	end

	def serve_guest   
	  puts "How can I be of service?"
    puts "1. Would you like to order a pizza?"
    puts "2. Would you like to leave?"
    p take_order(gets.chomp.to_i)
  end

  def take_order(order_number)
  	case order_number
		  when 1
		    "Let me get the menu"
		  when 2
		    "Thank you for your visit"
		  else
		    "I really don't understand"
		end
	end

end