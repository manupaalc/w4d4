
def first_anagram?(str1, str2)  # == > Factorial 
    arr1 = str1.split("")
    
    str1_arr = arr1.permutation.to_a 
    str1_arr = str1_arr.map {|sub| sub.join("")}
    str1_arr.count 
end



def second_anagram?(str1, str2)   # ==> quadratic 
    arr2 = str2.split("") # => linear 
    str1.each_char.with_index do |char,i|  # => linear 
        arr2.delete(arr2[arr2.find_index(char)]) if arr2.find_index(char) 
        # if  find_index 1  # => linear (not stack)
        # delete (find_index 2) # => linear of delete + find_index2 linear 
    end
    arr2.empty?
end

def third_anagram?(str1, str2)    # ==> quadratic 
    str1.split("").sort == str2.split("").sort  # .sort is quick sort, on average is log linear  
end


def fourth_anagram?(str1, str2)  # ==> linear 
    count1 = Hash.new(0)
    count2 = Hash.new(0)
    
    str1.each_char do |char|
        count1[char] += 1
    end

    str2.each_char do |char|
        count2[char] += 1
    end
    count1 == count2
end



p fourth_anagram?("giz", "sal")    #=> false
p fourth_anagram?("elv", "lve")    #=> true



def bonus_anagram?(str1, str2)  # ==> linear
    count = Hash.new(0)

    str1.each_char do |char|
        count[char] += 1
    end

    str2.each_char do |char|
        count[char] -= 1
    end

    return count.all?{|key, value| value == 0}

end










