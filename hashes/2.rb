car = {
  type:    'sedan',
  color:   'blue',
  mileage:  80_000
}

# Hash#[]= creates a new key-value pair or modifies an existing one based on the given key and value.
car[:year] = 2003
p car