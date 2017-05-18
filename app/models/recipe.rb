class Recipe < ApplicationRecord

	def sale_message 
		
	end

	def chef 
		user.name
	end

end
