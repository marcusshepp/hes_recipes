class IngredientsController < ApplicationController

  def index
      @ingredients = Ingredient.all
  end

  # GET /ingredients/:id
  def show
      @ingredients = Ingredient.find_all_by_id(params["id"])[0]
      if (params.has_key?(:delete))
          @ingredients.destroy
          redirect_to :action => 'index'
      end
  end

  # GET /ingredients/new
  def new
      @ingredient = Ingredient.new
      @r_id = params[:recipe_id]
      print @r_id
  end

  # POST /ingredients
  def create
      @recipe = Recipe.find(params[:recipe_id])
      @recipe.ingredients.create(params[:ingredient])
      if params[:commit] == "Save and Add 'Steps'"
          redirect_to url_for(:controller => :steps, :action => :new, :recipe_id => @recipe.id)
      elsif params[:commit] == "Save and Add Another Ingredient"
          redirect_to :action => 'new', :recipe_id => @recipe.id
      end
  end

  # GET /ingredients/:id/edit
  def edit
      @ingredient = Ingredient.find_all_by_id(params["id"])[0]
      @recipes = Recipe.all
  end

  # PUT /ingredients/:id
  def update
      @r = Ingredient.find(params[:id])
      if @r.update_attributes(params[:ingredient])
          redirect_to :action => "index"
      end
  end

  # DELETE /ingredients/:id
  def destroy
      Ingredient.find(params[:id]).destroy
  end
end
