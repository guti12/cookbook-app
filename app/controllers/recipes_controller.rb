class RecipesController < ApplicationController
	def one_recipes_action
		@recipe = Recipe.last
		render 'one_recipe_view.html.erb'
	end
end
