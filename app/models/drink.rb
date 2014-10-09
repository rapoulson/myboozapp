class Drink < ActiveRecord::Base
  extend FriendlyId

  friendly_id :name, use: :slugged

  has_many :drink_ingredients
  has_many :ingredients, :through => :drink_ingredients


end
