class Cookbook < ApplicationRecord
	has_many :ingredients, through: :cookbook_ingredients
end
