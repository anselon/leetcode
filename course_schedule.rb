# @param {Integer} num_courses
# @param {Integer[][]} prerequisites
# @return {Boolean}
def can_finish(num_courses, prerequisites)
 
        graph = Hash.new([])
        neighbors = Hash.new([])
        prerequisites.each do |pair|
            course, prereq = pair
            if not graph[course].include? prereq
            	graph[course] += [prereq]
            	neighbors[prereq] += [course]
            end
            
        end
        
        stack = Array.new
        (0..(num_courses-1)).each do |n|
            if (graph[n] == [])
                stack << n
            end
        end
  
        count = 0
        while not stack.empty?
            node = stack.pop
            count += 1
            for n in neighbors[node]
                graph[n].delete(node)
                if graph[n] == [] 
                    stack << n
                end
            end

        end

        return (count == num_courses)
    
end
