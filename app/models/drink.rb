class Drink < ActiveRecord::Base
  validates_uniqueness_of :name
  
  has_many :drink_ingredients
  has_many :ingredients, :through => :drink_ingredients

  def to_param
    "#{id} #{name}".parameterize
  end
end
