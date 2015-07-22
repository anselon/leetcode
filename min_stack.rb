class MinStack
    # Initialize your data structure here
    def initialize
        @stack = []
        @top = -1 
        @min = []
        @min_top = -1
        
    end

    # @param {Integer} x
    # @return {Void} nothing
    def push(x)
        if @min.empty? or x <= @min[@min_top]
            @min_top+=1
            @min[@min_top] = x
        end
        
        @top+=1
        @stack[@top] = x
        return nil
    end

    # @return {Void} nothing
    def pop
        if @min[@min_top] == @stack[@top] and (not @min.empty?)
            @min.delete_at(@min_top)
            @min_top-=1
        end
        @stack.delete_at(@top)
        @top-=1
        return nil
    end

    # @return {Integer}
    def top
        @stack[@top]
    end

    # @return {Integer}
    def get_min
        @min[@min_top]
    end
end