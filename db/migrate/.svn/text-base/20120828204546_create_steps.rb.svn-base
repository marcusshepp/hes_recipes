class CreateSteps < ActiveRecord::Migration
  def up
    create_table :steps do |t|
      t.references :recipe
      t.string :description, :limit=>200
      t.integer :sequence
    end
  end

  def down
    drop_table :steps
  end
end
