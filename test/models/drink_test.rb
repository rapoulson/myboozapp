require 'test_helper'

class DrinkTest < ActiveSupport::TestCase
  
  describe Drink do 
    my_drink = Drink.create!(:name => "My favorite drink")
    my_drink.to_param should == [my_drink.name,"My favorite drink"]
  end
    
  end
end
