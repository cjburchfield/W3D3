def range(start_num,end_num) #iterative range
    return [] if end_num < start_num 
    arr = []
    (start_num...end_num).each do |i|
        arr << i
    end

    arr
end

#recursive range
def rec_range(start_num,end_num) #1,5
    return [] if end_num < start_num
    return [] if start_num == end_num 
    # last_num = end_num -1
    rec_range(start_num, end_num - 1) + [end_num - 1]
end

# p rec_range(1,5)


def range_sum(start_num,end_num) #iterative
    arr = range(start_num,end_num)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

#recursive_sum
def rec_range_sum(start_num, end_num)
    #range 1,5
    #1 +2 + 3 + 4
    range = rec_range(start_num, end_num)
    return 0 if range.length == 0 
    last_num = range.pop
    rec_range_sum(start_num, last_num) + last_num    

end

# recursion 1 of exponentiation
def exponentiation(base, exp) #2,1
    return 1 if exp == 0
    return base if exp == 1
    base * exponentiation(base, exp - 1) #2 * exp(2, 1)
end

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

p exponentiation(0,1)

