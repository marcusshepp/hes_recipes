# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

recipe = Recipe.create(:title=>'Grilled Hamburgers',:prep_time=>15,:cook_time=>10,:servings=>4,:origin=>'Health Enhancement Systems')

recipe.ingredients.create([
  {:item=>'1 lb. ground beef'},
  {:item=>'1/2 tsp salt'},
  {:item=>'1/2 tsp pepper'},
  {:item=>'2 Tbsp Lea & Perrins Worcestershire sauce'},
  {:item=>'1/4 tsp onion powder'},
  {:item=>'1/4 tsp garlic powder'}
])

recipe.steps.create([
  {:description=>'Prepare charcoal grill for direct heat, or preheat gas grill.',:sequence=>1},
  {:description=>'Combine all ingredients and form into four 1/4 pound patties',:sequence=>2},
  {:description=>'Place each patty on the grill.  After 2 minutes, slide a spatula under each patty and rotate 1/4 turn to sear a cross-hatch pattern.',:sequence=>3},
  {:description=>'After 4 additional minutes (6 minutes total), flip the patties and top with cheese if desired.  Cook an additional 3-4 minutes.',:sequence=>4},
  {:description=>'Serve with toasted buns, lettuce, tomato, onion.  Consider jalapeno peppers, horseradish, and other spices.',:sequence=>5}
])
