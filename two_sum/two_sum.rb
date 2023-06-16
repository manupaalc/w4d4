
def two_sum(arr, target_sum) # => quadratic 
    
    # (0...arr.length).any? do |i|
    #     ( i + 1...arr.length).each do |j|
    #          arr[i] + arr[j] == target_sum
    #     end
    # end
    # 
end


def okay_two_sum?(arr, target_sum) # => quadratic 


    arr.sort!.each.with_index.any? do |x, i|
        arr[i..-1].bsearch{|ele| ele == target_sum - x }
    end 
end

arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false



def better_two_sum?(arr, target_sum) # => linear 
    # arr = arr.sort 

    hash = {}
   arr.each do |x|
    possible_y = target_sum - x 
    if hash[possible_y] 
        return true 
    else
        hash[x] = true
    end

   end
   false 

end

