class Drink < ActiveRecord::Base
  validates_uniqueness_of :name
  validates_format_of :name, without: /\d/

  has_many :drink_ingredients
  has_many :ingredients, :through => :drink_ingredients

  def to_param
    name
  end

  #def self.find(name)
   # find_by_name(name)
  #end
end