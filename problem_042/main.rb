# Triangle numbers.

class Word
    def initialize (s)
        word = s.upcase
        @sum = 0

        word.each_byte do |c|
            @sum += (c - 65) + 1
        end
    end

    # A number will only be a triangle number if the remainder of the
    # division below is 0.
    def isTriangle?
        if (Math.sqrt(8*@sum + 1) - 1) % 2 == 0 then
            return true
        else
            return false
        end
    end
end

tri_words = 0
f = File.new("words.txt")
f.each(",") do |str|
    nstr = str.delete("\",")
    w = Word.new(nstr)
    if w.isTriangle? then
        tri_words += 1
    end
end

puts "Triangle words = #{tri_words}"

