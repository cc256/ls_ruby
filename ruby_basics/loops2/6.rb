names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift # removes the first element; names.pop removes the last element
  break if names.empty? #alternative names.size == 0
end

