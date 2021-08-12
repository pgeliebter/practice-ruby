=begin
I need an array.
I need a function.
I need set up a new array in the reverse order.
I need to iterate through the array backwards and shovel into a new array.
I am assuming I can't make into a string and .reverse or .map


def reverseArray(a)
  initialize a new_array
  iterate through 'a' backward. I don't know how to iterate backword with a .each. Maybe I can use .with_index. After googling it I can use a .times do call my iterator but that should be the same a while loop so i will just use a while loop. that will look like index = a.length -1 and subtracting 1 from the index
    shovel current value from a[i] into a new array.
  end

end

=end

array = [1, 2, 3, 4, 5, 6]
array2 = [5, 4, 3, 2, 1, 5, 4, 3, 2, 1]

def reverseArray(a)
  new_array = []
  index = a.length - 1
  while index >= 0
    new_array << a[index]
    index -= 1
  end
  return new_array
end

p reverseArray(array)
p reverseArray(array2)
