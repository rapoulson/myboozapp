require 'spec_helper'
  
  describe "Drink" do 
    my_drink = Drink.create!(:name => "My favorite drink")
    my_drink.to_param.should == "My favorite drink"
  end