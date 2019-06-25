
def take_block(&block)        # &block argument is a block between do/end
  block.call
end

take_block do                 # call method take_block; do .. end will be passed into the take_block function as an argument
  puts "Block being called in the method!"
end



