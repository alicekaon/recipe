class CookbookIngredient < ApplicationRecord
	belongs_to :cookbook
	belongs_to :ingredient
end
