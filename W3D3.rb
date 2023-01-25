def range(start_num,end_num) #iterative
    return [] if end_num < start_num 
    arr = []
    (start_num...end_num).each do |i|
        arr << i
    end

    arr
end

#recursive
def rec_range(start_num,end_num) #1,5
    return [] if end_num < start_num
    return [start_num] if start_num == 1 
    [start_num] + rec_range(start_num + 1...end_num) 
    

end

def range_sum(start_num,end_num) #iterative
    arr = range(start_num,end_num)
    sum = 0
    arr.each do |num|
        sum += num
    end

    sum
end


p range_sum(1,5)