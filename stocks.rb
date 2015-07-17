# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
	if prices.length < 2 
		return 0
	end
    max_diff = diff= prices[1] - prices[0]
    min_i = 0

    len = prices.length
    (1..(len-1)).each do |i|
    	if prices[i] < prices[min_i]
    		min_i = i 
    	end

    	diff = prices[i] - prices[min_i]

    	if diff > max_diff
    		max_diff = diff
    	end 
    end

    return max_diff
end

print max_profit(prices)