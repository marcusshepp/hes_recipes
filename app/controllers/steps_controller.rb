class StepsController < ApplicationController
    def index
        @steps = Step.all
    end
    
    def show
        @step = Step.find_all_by_id(params[:id])[0]
        if (params.has_key?(:delete))
            @step.destroy
            redirect_to :action => "index"
        end
    end
    
    # GET /steps/new
    def new
        @step = Step.new
        @recipes = Recipe.all
    end

    # POST /steps
    def create
        @recipe = Recipe.find(params[:recipe_id])
        @recipe.steps.create(params[:step])
        if params[:commit] == "Save And Continue"
            redirect_to url_for(:controller => :recipes, :action => :index)
        elsif params[:commit] == "Save and Add Another Step"
            redirect_to :action => 'new'
        end
    end

    # GET /steps/:id/edit
    def edit
        @step = Step.find_all_by_id(params[:id])[0]
        @recipes = Recipe.all
    end

    # PUT /steps/:id
    def update
        @s = Step.find(params[:id])
        if @s.update_attributes(params[:step])
            redirect_to :action => "index"
        end
    end

    # DELETE /steps/:id
    def destroy
        Step.find(params[:id]).destroy
    end
end
