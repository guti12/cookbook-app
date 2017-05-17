class RecipesController < ApplicationController
	def one_recipes_action
		@recipe = Recipe.last
		render 'one_recipe_view.html.erb'
	end

	def index
		if session[:count] == nil
			session[:count] = 0
		end

		session[:count] += 1
		@visit_count = session[:count]
		
		# @recipes = Recipe.all.order("title")
		@recipes = Recipe.all 
		sort_attritube = params[:sort]
		if sort_attritube
			@recipes = Recipe.all.order(sort_attritube)
		end
	end
	
	def show
		recipe_id = params[:id]
		@recipe = Recipe.find_by(id: recipe_id)
	end

	def new
		
	end

	def create
		recipe = Recipe.new(
												title: params[:title],
												chef: params[:chef],
												ingredients: params[:ingredients],
												directions: params[:directions]
												)
		recipe.save
		flash[:success] = "Recipe Successfully Created"
		redirect_to "/recipes/#{recipe.id}"
	end

	def edit
		@recipe = Recipe.find_by(id: params[:id])
		# or @recipe = Recipe.find(params[:id])
	end

	def update
		recipe = Recipe.find(params[:id])
		recipe.assign_attributes(title: params[:title],
														 chef: params[:chef],
														 ingredients: params[:ingredients],
														 directions: params[:directions]
														)
		recipe.save
		flash[:success] = "Recipe successfully updated"
		redirect_to "/recipes/#{recipe.id}"
	end
 
	def destroy
		recipe = Recipe.find(params[:id])
		recipe.destroy

		flash[:success] = "Recipe destroyed"
		redirect_to	"/"
	end

end
