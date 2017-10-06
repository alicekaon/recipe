class Ingredient < ApplicationRecord
	has_many :cookbook_ingredients
	has_many :cookbooks, :through => :cookbook_ingredients
end
