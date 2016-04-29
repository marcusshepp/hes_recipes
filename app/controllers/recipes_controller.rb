class RecipesController < ApplicationController
    # GET /recipes
    def index
        @recipes = Recipe.all
        @foo = [1 , 2]
    end

    # GET /recipes/:id
    def show
        @foo = Recipe.find_all_by_id(params["id"])[0]
    end

    # GET /recipes/new
    def new
        # render recipe creation form
    end

    # POST /recipes
    :verify_authenticity_token
    def create
        print request.POST
        @r = Recipe.new({
            :title => params[:title],
            :prep_time => params[:prep_time],
            :cook_time => params[:cook_time],
            :servings => params[:servings],
            :origin => params[:origin],
            })
        if @r.save
            print @r
        else
            print "WTF"
        end
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
