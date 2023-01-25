# def range(start_num,end_num) #iterative range
#     return [] if end_num < start_num 
#     arr = []
#     (start_num...end_num).each do |i|
#         arr << i
#     end

#     arr
# end

# #recursive range
# def rec_range(start_num,end_num) #1,5
#     return [] if end_num < start_num
#     return [] if start_num == end_num 
#     # last_num = end_num -1
#     rec_range(start_num, end_num - 1) + [end_num - 1]
# end

# # p rec_range(1,5)


# def range_sum(start_num,end_num) #iterative
#     arr = range(start_num,end_num)
#     sum = 0
#     arr.each do |num|
#         sum += num
#     end
#     sum
# end

# #recursive_sum
# def rec_range_sum(start_num, end_num)
#     #range 1,5
#     #1 +2 + 3 + 4
#     range = rec_range(start_num, end_num)
#     return 0 if range.length == 0 
#     last_num = range.pop
#     rec_range_sum(start_num, last_num) + last_num    

# end

# # recursion 1 of exponentiation
# def exponentiation(base, exp) #2,1
#     return 1 if exp == 0
#     return base if exp == 1
#     base * exponentiation(base, exp - 1) #2 * exp(2, 1)
# end

# recursion 2 of exponentiation
# def exponentiation(base, exp)
#     return 1 if exp == 0
#     return base if exp == 1
#     if exp.even?
#         exponentiation(base, exp/2) ** 2
#     elsif exp.odd?
#         base * (exponentiation(base, (exp -1)/2) ** 2)
#     end

# end

# p exponentiation(0,1)

##Iterative Version
# copy = arr.map! do |ele|
#     if ele.is_a?(Array)
#         ele.dup
#     else
#         ele
#     end
# end

#base case self[0] =
#checking it's an array
#checking 
# && array == array.flatten
class Array
    
    def deep_dup
   
      self.map do |ele|
            if ele.is_a?(Array)
               ele.deep_dup
            else
               ele.dup 
            end
        end

    end
end


# def deep_dup
       
#    dupe = []

#    self.each do |ele|
#          if ele.is_a?(Array)
#             dupe.concat([ele.deep_dup])
#          else
#             dupe.concat([ele].dup) 
#          end
#      end

#      dupe
#  end


# def fibonacci(n)
#    return [0] if n == 0
#    return [1] if n == 1

#    seq = [0,1,1]

#    while seq.length < n
#       one_back = seq[-1]
#       two_back = seq[-2]
#       next_num = one_back + two_back
#       seq << next_num
#    end

#    return seq

# end

#[0,1,1,2,3,5,8,13]

def fibonacci(n) #n = array length of fibonacci sequence
   return [] if n == 0
   return [0] if n == 1
   return [0,1] if n == 2

   arr = [0,1,1]
   one_back = arr[-1]
   two_back = arr[-2]
   next_num = one_back + two_back

   fibonacci(n-1) + next_num

   
end

p fibonacci(5)