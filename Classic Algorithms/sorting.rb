# sorting.rb
# Implemetations of two sorting algorithsm: bubble and merge
#

test_list = [4, -1, 17, 0, 100, 22]

def bubble_sort!(list)
  list.each_with_index do |n, index_1|
    list.each_with_index do |m, index_2|
      if n < m
        temp = list[index_2]          # You can't use n here instead of the indices becuase the 
        list[index_2] = list[index_1] # value of n stays the same throughout the entire loop
        list[index_1] = temp
      end
    end
  end
end

def merge_sort(list)
  # if the array is size 1 or 0, then it's sorted and return it
  if list.length <= 1
    return list
  end

  # Otherwise, we need to split the array into two 
  middle = list.length / 2
  left = list.slice(0, middle)
  right = list.slice(middle, list.length)

  left = merge_sort(left)
  right = merge_sort(right)
  return merge(left, right)

end

# merging function for merge sort
def merge(list_a, list_b)
  result = Array.new

  while list_a.length > 0 or list_b.length > 0
    if list_a.length > 0 and list_b.length > 0
      if list_a[0] <= list_b[0]
        result << list_a[0]
        list_a.slice!(0)
      else
        result << list_b[0]
        list_b.slice!(0)
      end
    elsif list_a.length > 0
      result << list_a[0]
      list_a.slice!(0)
    elsif list_b.length > 0
      result << list_b[0]
      list_b.slice!(0)
    end
  end
  return result

end

bubble_sort!(test_list)

puts test_list
puts

test_list = [4, -1, 17, 0, 100, 22]

test_list = merge_sort(test_list)

puts test_list
