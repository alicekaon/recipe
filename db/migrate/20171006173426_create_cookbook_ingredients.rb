class CreateCookbookIngredients < ActiveRecord::Migration[5.1]
  def change
    create_table :cookbook_ingredients do |t|
      t.belongs_to :cookbook, index: true
      t.belongs_to :ingredient, index: true

      t.timestamps
    end
  end
end
