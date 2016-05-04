module RecipesHelper
    def setup_recipe(recipe)
        recipe.ingredients || Ingredient.new
        1.times { recipe.ingredients.build }
        recipe.steps || Step.new
        1.times { recipe.steps.build }
        recipe
    end
end
