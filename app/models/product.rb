class Product < ApplicationRecord

	def sale_message
		if price < 2 
			return "Discount Item"
		else 
			return "Everyday Value"
		end
		
	end

	def tax
		num = price * 0.09
		num.round(2)
		
	end

	def total 
		sum = price + tax
		sum.round(2) 
	end
end
