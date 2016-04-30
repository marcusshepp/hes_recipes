class RecipesController < ApplicationController
    # GET /recipes
    def index
        @recipes = Recipe.all
    end

    # GET /recipes/:id
    def show
        @recipe = Recipe.find_all_by_id(params["id"])[0]
        if (params.has_key?(:delete))
            @recipe.destroy
        end
    end

    # GET /recipes/new
    def new
        # render recipe creation form
        @ingredients = Ingredient.all
        @steps = Step.all
        next_recipe_id = Recipe.maximum(:id).next
        # ingredient_data = params[:ingredient]
        # ingredient_data[:recipe_id] = next_recipe_id
        # Ingredient.create(ingredient_data)
    end

    # POST /recipes
    :verify_authenticity_token
    def create
        @r = Recipe.create(params[:recipe])
        print params
    end

    # GET /recipes/:id/edit
    def edit
        @recipe = Recipe.find_all_by_id(params["id"])[0]
    end
    
    # PUT /recipes/:id
    def update
        @r = Recipe.find(params[:id])
        if @r.update_attributes(params[:recipe])
            redirect_to :action => "index"
        end
    end

    # DELETE /recipes/:id
    def destroy
        Recipe.find(params[:id]).destroy
    end
end
