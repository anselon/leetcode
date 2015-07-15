# @param {Integer} n
# @return {Integer}
# @param {String} s
# @return {Integer}
def count_primes(n)
    is_prime = [true] * (n + 1)
    count = 0
    for i in 2...n
        if is_prime[i] == true
            count += 1

            #increment from i**2 to n by i each time
            (i * i).step(n, i) do |j| 
                is_prime[j] = false

            end
        end
    end
    count
end



    