# @param {Integer[]} gas
# @param {Integer[]} cost
# @return {Integer}

#gas [1 3 2 5 8]
#cost  [1 2 3 4 5]
def can_complete_circuit(gas, cost)
    diff = curr_gas = total= 0
    start = -1
    gas.each_with_index do |g, idx|
        diff = (g - cost[idx])
        curr_gas += diff
        total += diff

        if curr_gas < 0
            curr_gas = 0 
            diff = 0 
            start = idx
        end
 
    end

    if total >= 0
        return start + 1
    end
    return -1

end
print can_complete_circuit([2], [1])