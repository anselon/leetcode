# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    index = 0 
    compare = strs.map{|s| s[0]}.uniq
    if strs == []
        return ''
    end

    while (compare.length == 1) and (compare[0] != nil)
        compare = []
        index+=1
        strs.each do |s|
            compare << s[index]
        end
        compare.uniq!
    end

    if index == 0
        return ''
    else 
        return strs[0][0..(index-1)]
    end
end

print longest_common_prefix(['a','a'])
print "\n"