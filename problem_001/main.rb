sum = 0
1000.times do |i|
    if i % 3 == 0 or i % 5 == 0 then
        sum += i
    end
end

puts sum


max_num = 1000
terms_3 = max_num/3
terms_5 = max_num/5
n_term_3 = 3 + (terms_3/3 - 1) * 3
n_term_5 = 5 + (terms_5/5 - 1) * 5

sum3 = (terms_3 * (3 + n_term_3))
