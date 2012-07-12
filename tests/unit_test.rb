require "test/unit"
require "../lib/treatment_array"

class TestTreatmentArray < Test::Unit::TestCase
  def test_sort_array_should_return_an_array
    assert_kind_of Array, TreatmentArray.sort_array([1,2,3,4,5]), "Doesn't return an array!!"
  end

  def test_sort_array_should_sort_an_array_of_same_kind_objects
    assert_equal [1,2,2,3,3,4,5], TreatmentArray.sort_array([1,2,3,2,4,3,5]), "The arrays are different!!"
  end

  def test_sort_odd_even_numbers_should_return_a_hash
    assert_kind_of Hash, TreatmentArray.sort_odd_even_numbers([1,2,3,4,6,17]), "Doesn't return a hash!!"
  end

  def test_sort_odd_even_numbers_should_return_a_hash_with_even_and_odd_values
    assert_equal({:even => [0,2,4], :odd => [1,3,7]}, TreatmentArray.sort_odd_even_numbers([0,1,2,3,4,7]), "The hashes are different!!")
  end
end
