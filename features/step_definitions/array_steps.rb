Given /^an array of objects$/ do
  @elements = [nil,1,2,4,nil,2,5,8,9,15]
end

Then /^an array will be returned, sorted$/ do
  TreatmentArray.sort_array(@elements)
end

Given /^an array of numbers$/ do
  @numbers = [1,2,3,5,5,4,1,20,18]
end

Then /^I will get odd and even numbers$/ do
  TreatmentArray.sort_odd_even_numbers(@numbers)
end

