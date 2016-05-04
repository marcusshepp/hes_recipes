module RecipesHelper
    def setup_recipe(recipe)
        recipe.ingredients || Ingredient.new
        3.times { recipe.ingredients.build }
        recipe.steps || Step.new
        3.times { recipe.steps.build }
        recipe
    end
end
