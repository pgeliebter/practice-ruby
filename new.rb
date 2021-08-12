pie = [13, 5, 2, 1, 41, 50, 40]

def third_highest(arr)
  greatest = arr[0]
  great_array = []
  arr.each do |ele|
    if ele > greatest
      great_array << ele
    end
  end
  return great_array
end

p third_highest(pie)
