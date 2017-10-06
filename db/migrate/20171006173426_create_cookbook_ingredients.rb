class CreateCookbookIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbook_ingredients do |t|
      t.integer :cookbook_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
