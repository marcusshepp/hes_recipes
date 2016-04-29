class CreateIngredients < ActiveRecord::Migration
  def up
    create_table :ingredients do |t|
      t.references :recipe
      t.string :item, :limit=>100
      t.integer :sequence
    end
  end

  def down
    drop_table :ingredients
  end
end
