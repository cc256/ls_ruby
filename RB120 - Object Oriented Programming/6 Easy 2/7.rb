class Pet
  def initialize(type, name)
    @type = type
    @name = name
  end

  def type
    @type
  end

  def name
    @name
  end
end


class Owner
  #@@number_of_pets = 0             # class variable counts all pets   
  def initialize(name) 
    @name = name
    @pet_count = 0                  # count to zero
  end

  def name                          # getter
    @name
  end

  def increase_pet_count            # setter
    #@@number_of_pets += 1
    @pet_count += 1
  end

  def number_of_pets                # getter
    #@@number_of_pets               
    @pet_count
  end   
end

class Shelter
  @@dict = {}                       # dict in format {owner1 => [pet1, pet2, ..], owner2 => [pet1, pet2, ..]}

  def adopt(owner, pet)
    if @@dict[owner]                # if owner is already inserted as key, then add pets into already existing array as value  
      @@dict[owner] << pet          # alternative @@dict[owner].push( pet )
    else
      @@dict[owner] = [pet]         # array as an  value
    end
    owner.increase_pet_count()      # increase owner's pet count
  end

# def print
#   p @@dict
# end

  def print_adoptions
    @@dict.each do |owner, value|           # key is named as owner; owner object is assigned to it; value is not used.
      #puts owner.name()                     # owner.name uses class Owner instance method name()
      puts "#{owner.name()} has adopted the following pets:"
      # P Hanson has adopted the following pets:

        @@dict[owner].each do |pet, value|  # key is named as pet; pet object is assigned to it; value is not used.
          #puts pet.name                     # pet.name uses class Pet instance method name()
          puts "a #{pet.type()} named #{pet.name()}"
          # a cat named Butterscotch
        end
      puts 
    end    
  end

end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
#shelter.print
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

# Expected output:
# P Hanson has adopted the following pets:
# a cat named Butterscotch
# a cat named Pudding
# a bearded dragon named Darwin

# B Holmes has adopted the following pets:
# a dog named Molly
# a parakeet named Sweetie Pie
# a dog named Kennedy
# a fish named Chester

# P Hanson has 3 adopted pets.
# B Holmes has 4 adopted pets.