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
      @recipes = Recipe.all
  end

  # POST /ingredients
  def create
      @r = Ingredient.create(params[:ingredient])
      redirect_to :action => 'index'
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
