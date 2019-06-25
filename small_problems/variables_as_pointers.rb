def test(b)
  puts "b: #{b.object_id}"
  puts "m: #{b.map!{|letter| "I like the letter: #{letter}"}.object_id}"
  puts "b: #{b.object_id}"
end

a = ['a', 'b', 'c']
puts "a: #{a.object_id} "
#puts a[0].object_id
puts test(a)
puts "a: #{a.object_id} "
#puts a[0].object_id


# if b.map
# a: 14967140 
# b: 14967140
# m: 14966850   map { |item| block } → new_ary 
# b: 14967140   b remains the same, because b points the same place in memory (no assignment was made)
# a: 14967140 

# if b.map!
# a: 7146080 
# b: 7146080
# m: 7146080     map! {|item| block } → ary 
# b: 7146080
# a: 7146080
