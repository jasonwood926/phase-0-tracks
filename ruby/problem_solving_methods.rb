# Write a method that takes an array of integers and an integer to search for. The method should return the index of the item, or nil if the integer is not present in the array. Don't use built-in array methods like .index. You are allowed to use .length and .each.

# Here's an example of how we might use your method (assuming you call it search_array):


# p search_array(arr, 1)
# => 3
# p search_array(arr, 24)
# => nil

def search_array(array, numbers)
#defines search array with array and numbers as an argument. 

index = 0
answer = nil;
#sets index to 0 and answer to nil 

while index < array.length && answer == nil
#starts loop through array and sets condition that if new 'answer' variable has the value of nil 
	if array[index] == numbers
  #return index_
  answer = index
  else
  #return nil
  answer = nil
  end
  index +=1
  end
  answer
  end
  
  # arr = [42,89,23,1,84,26,14,87,52,46]
 new_arr = [42,89,23,1,84,26,14,87,52,46]
  
  p search_array(new_arr,84)
  p search_array(new_arr,26)


#0112358

fibonacci_start = [0, 1]

# this method will 
def fib(previous_num, next_num)
  previous_num + next_num = new_num
  fibonacci_start << new_num
  
  index = fibonacci_start

def fibonacci(numbers)	
  #defines new method that takes numbers
		arr =[0,1]
    sum = 0
    #array at fibonacci start
    #sum set to 0 
    until arr.length == numbers
    #until the array's length is a number in the array 
    #add last two numbers 
    sum = arr[arr.length-1] + arr[arr.length-2]
    #sum is 1 + 0 then 
    
    #push thaa sum to the array
    arr.push(sum)
    
  end
  arr
end

p fibonacci(100)

check = fibonacci(100)
check.last

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end


array = [1, 2, 3, 5, 4, 6]
p bubble_sort(array)

  
  
  





