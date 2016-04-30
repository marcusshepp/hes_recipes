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
    end

    # POST /recipes
    :verify_authenticity_token
    def create
        @r = Recipe.create(params[:recipe])
        
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
