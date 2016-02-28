# This method takes an array of integers (arr). Your task is to find and then return the most
# frequent integer. These integers might be positive or negative. If no most-frequent integer
# exists, return nil.

def find_most_frequent_integer(arr)
 freq = Hash.new    #hash to count integers in using key as integer and value as count
 answer = [0]       #initial value for answer array
 flag = 0           #flag to check for unique value
 i = 1              #integer for counting


 
  arr.each {|a|     #loop through every element in array    
    if freq[a] != nil     #check to see if hash value exists
        freq[a] = freq[a] + 1  #add 1 to the hash value
    else 
        freq[a] = 1   #create the hash value
    end
  }
 answer_key = freq.keys     #keys from hash
 answer_value = freq.values #values from hash
 



  while i < answer_value.length  do  #loop through every element in answer array
    if answer_value[i] == answer_value[answer[0]]  #check to see if value is greater than value that is stored in answer array
        flag = 1                                    #flag if same value
    elsif answer_value[i] > answer_value[answer[0]] #if different store new value in answer array and reset flag
        answer = [i]
        flag = 0
    end
    i +=1               #increment counter
  end
  
  if flag == 0          #if flag is not set then unique value and return the value stored at location in answer array in answer_key array
     answer.each {|a|
        return answer_key[a]
     }
  else 
    return nil           #return nil if flag has been set
  end    
end