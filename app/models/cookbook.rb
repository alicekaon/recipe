class Cookbook < ApplicationRecord
	has_many :cookbook_ingredients
	has_many :ingredients, :through => :cookbook_ingredients
end
