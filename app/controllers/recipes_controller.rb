class RecipesController < ApplicationController
    # GET /recipes
    def index
        @recipes = Recipe.all
        @foo = [1 , 2]
    end

    # GET /recipes/:id
    def show
    end

    # GET /recipes/new
    def new
        print "hellowrld"
    end

    # POST /recipes
    def create
    end

    # GET /recipes/:id/edit
    def edit
    end

    # PUT /recipes/:id
    def update
    end

    # DELETE /recipes/:id
    def destroy
    end
end
