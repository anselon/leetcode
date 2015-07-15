# @param {Integer[]} height
# @return {Integer}
def trap(height)

    res = 0
    left = 0
    right = height.length-1
    prevHeight = 0
    
    while left < right
        local_height = (height[left] < height[right] ? height[left] : height[right])
        if(local_height > prevHeight) 
            res -= prevHeight
            res += (right - left -1) * (local_height - prevHeight)
            prevHeight = local_height
        else
            res -= local_height
        end
        if(height[left] <= height[right]) 
            left+=1
         else 
            right-=1
        end
    end
    return res;
end