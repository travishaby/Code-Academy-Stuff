#from the histogram tutorial

puts "Please enter the text you would like to create a histogram of word frequency from."

text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word, count|
    frequencies[word] += 1
    
end

frequencies = frequencies.sort_by do |word, count|
        count
end

frequencies.reverse!

frequencies.each do |word, count|
    puts word + " " + count.to_s
end

