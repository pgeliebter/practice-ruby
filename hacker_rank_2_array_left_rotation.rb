=begin
I need an array.
I need a function called rotLeft that accepts an array AND a number of shifts to be performed.
I need to return the array the values in the array shifted to the left d times(so that the first value become the last value).
  (Optomization: do not create a new array but just shift the current array so we don't need multiple saves of the data) .
I need to perform a delete method and a shovel method on the array 'd' times.
A .times do loop sounds perfect as I don't need to iterate through the array.
upon googling a .shift method is the correct way to remove the first value and call it simeltaniously to shovel it in.

array = [1, 2, 3, 4, 5, 6]
array2 = [5, 4, 3, 2, 1, 5, 4, 3, 2, 1]

rotleft(array, 3)
should return [4,5,6,1,2,3]

rotLeft(array2,4)
should return [1,5,4,3,2,1,5,4,3,2]


def rotLeft(a,d)
  d.times do the following things
    shovel the 0 value of the array into the array
    delete the 0 value of the array
  end
end

=end

array = [1, 2, 3, 4, 5, 6]
array2 = [5, 4, 3, 2, 1, 5, 4, 3, 2, 1]

def rotLeft(a, d)
  d.times do
    a << a.shift
  end
  return a
end

p rotLeft(array, 3)
p rotLeft(array2, 4)
