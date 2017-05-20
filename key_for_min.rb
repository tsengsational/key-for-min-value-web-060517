require 'pry'
# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
# collect all the values of the hash
# sort the values with the lowest value first
# take the first value of the array of sorted values and set it equal to a variable, minValue
# iterate over each element of the hash and test if the value is equal to minValue
# if it is, set the key equal to the variable minValueKey
# return the variable minValueKey
  minValues = Array.new
  minValues << name_hash.collect  {|key, value| value}
  minValues = minValues.flatten
  minValues = minValues.sort
  minValue = minValues[0]
  minValueKey = nil
  name_hash.each { |key, value|
    if value == minValue
      minValueKey = key
    end
  }
  minValueKey
end
