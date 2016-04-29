class CreateRecipes < ActiveRecord::Migration
  def up
    create_table :recipes do |t|
      t.string :title, :limit=>50
      t.integer :prep_time
      t.integer :cook_time
      t.integer :servings
      t.string :origin, :limit=>100
    end
  end

  def down
    drop_table :recipes
  end
end
