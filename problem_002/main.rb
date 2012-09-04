fm = 4000000 # Maximum Fibonacci number
fn = 0       # Current Fibonacci number
n = 0

sum = 0

# The golden ratio formulae.
phi = (1 + Math.sqrt(5))/2
psi = - 1/phi

while (fn = ((phi**n - psi**n)/Math.sqrt(5)).to_i) < fm do
    puts "Fib[#{n}] = #{fn}"
    if fn & 1 == 0 then
        sum += fn
    end

    n += 1
end

puts sum

