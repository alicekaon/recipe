class AddQuantityForIngredientToCookbookIngredients < ActiveRecord::Migration[5.1]
  def up
    add_column :cookbook_ingredients, :quantity, :integer, :default => 0
  end

  def down
    remove_column :cookbook_ingredients, :quantity
  end
end
