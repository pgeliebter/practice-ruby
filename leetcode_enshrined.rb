=begin
  I am getting an array of strings and I should return an array of arrays and each inner array should be all the strings that contain exactly the same letters.

  All strings will only have lower case english letters. The strings can be up to 100 letters long.
  The array can have up to 10,000 strings.

  Question - What about repeating letters? it mentions in anagram description that typically it is only once but how about in this case?

  Example 1:
  Input: strs = ["eat","tea","tan","ate","nat","bat"]
  Output: [["bat"],["nat","tan"],["ate","eat","tea"]]

  Example 2:
  Input: strs = [""]
  Output: [[""]]

  Example 3:
  Input: strs = ["a"]
  Output: [["a"]]

  Example 4:
  Input: strs = ["a","ab","ba","ca","car","care"]
  Output: [["a"],["ab","ba"],["ca"],["car"],["care"]]

  Decomposing the problem - first I will set up a function that iterates through an array and splits each element into a new array and then sorts the new array and then joins it back to a string and compares it to a preset string and prints "yes" if it is a match
  
strs = ["eat","tea","tan","ate","nat","bat"]

set preset_word to "aet"

  define a function that 
    iterates through an array
       set a variable to a string called sorted_word
       split,sort,join each element into an array of charachters
      if sorted_word equals the preset_word
        print "yes"
      end
    end  
  end

  call the function
  my expected output would be "yes" printed 3 times

  Next Steps -
  instead of comparing to a preset word and printing yes if matches
  i will initialize an empty hash called hashed_anagrams that has an initial value of an empty array.
  I will add each split&sorted word to that hash
  I will then add the index of the element to the value of the split&sorted word
  and then return the hash

  Next Steps -
  instead of returning the hash 
    I will create a new array called arr_anagrams
      I will loop through the values of the hash and
        loop through the inner arrays of the hash and 
          add the current element of strs to the arr_anagrams
        end  
      end
      I will return arr_anagrams
=end

strs = ["a", "ab", "ba", "ca", "car", "care"]

def group_anagrams(strs)
  b = []
  hashed_anagrams = Hash.new
  strs.each_with_index do |ele, i|
    split_sorted_word = ele.split("").sort
    if !hashed_anagrams[split_sorted_word]
      hashed_anagrams[split_sorted_word] = [i]
    else
      hashed_anagrams[split_sorted_word] << i
    end
  end
  arr_anagrams = []
  hashed_anagrams.values.each do |v|
    temp_arr_anagrams = []
    v.each do |e|
      temp_arr_anagrams << strs[e]
    end
    arr_anagrams << temp_arr_anagrams
  end
  return arr_anagrams
end

p group_anagrams(strs)

# decomp part 2
# strs = ["eat", "tea", "tan", "ate", "nat", "bat"]

# def group_anagrams(strs)
#   b = []
#   anagrams = Hash.new
#   strs.each_with_index do |ele, i|
#     split_sorted_word = ele.split("").sort
#     if !anagrams[split_sorted_word]
#       anagrams[split_sorted_word] = [i]
#     else
#       anagrams[split_sorted_word] << i
#     end
#   end
#   p anagrams
# end

# group_anagrams(strs)

# decomposition 1
# trs = ["eat", "tea", "tan", "ate", "nat", "bat"]

# def group_anagrams(strs)
#   strs.each do |ele|
#     split_sorted_word = ele.split("").sort
#     if sorted_word == @preset_word
#       puts "yes"
#     end
#   end
# end

# group_anagrams(strs)

# code from leet code
def group_anagrams(strs)
  result = {}
  strs.each do |str|
    value = str.chars.sort.join
    result[value] ||= []
    result[value] << str
  end
  final_result = []
  result.values.each do |entry|
    final_result << entry
  end
  return final_result
end

def group_anagrams(strs)
  result = {}
  strs.each do |str|
    key = str.chars.sort.join
    result[key] = [] unless result[key]
    result[key] << str
  end
  result.values
end
