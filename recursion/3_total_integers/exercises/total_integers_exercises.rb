def total_integers(array)
  total = 0
  array.each do |value|
    if value.is_a?(Array)
      total += total_integers(value)
    elsif value.is_a?(Integer)
      total += 1
    end
  end
  total
end

# Count the total number of integers inside of the given array
# The array may be nested, and the integers inside these "inner" layers must also be counted
#
# Example: `total_integers([0, 1, [5]]) == 3`
#
# NOTE: you may notice that `Array#flatten` would make quick work of this,
# but you should implement this method without using it. The tests will check
# to make sure `#flatten` isn't used.
