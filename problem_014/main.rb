p_begin = Time::now

max_num = 1000000
database = Array.new(max_num)

greatest_seq = 0
gs_terms = 0

max_num.times do |i|
    chain_size = 0
    n = i
    while n > 1
        if n >= max_num or database[n] == nil then
            if n & 1 == 0 then
                n = n/2
            else
                n = 3 * n + 1
            end
            chain_size += 1
        else
            chain_size += database[n]
            n = 1
        end
    end

    # Insert the result on the database.
    database[i] = chain_size + 1
    if database[i] > gs_terms then
        greatest_seq = i
        gs_terms = database[i]
    end
end

puts "Greatest Collatz sequence under one million is #{gs_terms} terms long " \
    "and starts at #{greatest_seq}."

p_end = Time::now

puts "Run time = #{p_end - p_begin}s"

