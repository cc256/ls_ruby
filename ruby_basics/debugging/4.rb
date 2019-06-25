pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

#pets[:dog] ='bowser' # bug: overwrites :dog
pets[:dog].push('bowser') # Array#push method

p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}