# Each player starts with the same basic stats.

player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# Then the player picks a character class and gets an upgrade accordingly.

character_classes = {
  warrior: { strength:  20 },
  thief:   { dexterity: 20 },
  scout:   { stamina:   20 },
  mage:    { charisma:  20 }
}

puts 'Please type your class (warrior, thief, scout, mage):'
input = gets.chomp.downcase

#player.merge(character_classes[input]) # bug: input is string instead on symbol + #merge does not mutate, use merge!

#p character_classes[input.to_sym]
#p player.merge(character_classes[input.to_sym])
player.merge!(character_classes[input.to_sym]) 

puts 'Your character stats:'
puts player