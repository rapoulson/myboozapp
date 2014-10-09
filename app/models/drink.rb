class Drink < ActiveRecord::Base
  validates_uniqueness_of :name

  has_many :drink_ingredients
  has_many :ingredients, :through => :drink_ingredients

  def to_param
    name
  end

  def self.find(input)
    find_by_name(input)
  end
end
