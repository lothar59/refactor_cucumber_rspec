class TreatmentArray

 # Sort no nil and comparable objects
 def self.sort_array(elements)
  elements.compact.sort{ |a,b| a <=> b }
 end

 # Return a hash of odd and even numbers sorted from an array
 def self.sort_odd_even_numbers(numbers)
  numbers.inject({:even => [], :odd => []}) do |result, i|
    i % 2 == 0 ? result[:even] << i : result[:odd] << i
    result
  end
 end

end
