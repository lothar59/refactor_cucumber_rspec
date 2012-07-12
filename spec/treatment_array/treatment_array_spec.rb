require 'spec_helper'

describe TreatmentArray do
  describe "sort_array" do
    it "sort an array of non nil comparable objects" do
      TreatmentArray.sort_array([nil,"toto","titi","tata",nil]).should == ["tata","titi","toto"]
    end
  end

  describe "sort_odd_even_numbers" do
    it "sort odd and even numbers and store them into a hash" do
      TreatmentArray.sort_odd_even_numbers([1,2,6,7,2,4,5,6,8,9]).should == { :even => [2,6,2,4,6,8], :odd => [1,7,5,9] }
    end
  end
end
