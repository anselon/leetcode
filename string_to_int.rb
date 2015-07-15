# @param {String} str
# @return {Integer}
def my_atoi(str)
    neg = 1
    num = str.chars.drop_while {|i| i == " "}
    if num[0] == "+"
        num = num.drop(1)
    elsif num [0] == "-"
        neg = -1
        num = num.drop(1)
    end
    num.take_while {|i| !!(i =~ /\A[-+]?[0-9]+\z/)}
    num = num.join.to_i
    if num == nil 
        return str
    end
    
    #can just use this code plus num.to_i to cheat    
    if num > 2147483647
        return  2147483647
    elsif num < -2147483648
        return -2147483648
    end
    
    return num*(neg)
    
end