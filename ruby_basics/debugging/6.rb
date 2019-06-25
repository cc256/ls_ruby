def get_quote(person)
  if person == 'Yoda'
    return 'Do. Or do not. There is no try.' # bug: no return
  end

  if person == 'Confucius'
    return 'I hear and I forget. I see and I remember. I do and I understand.' # bug: no return
  end

  if person == 'Einstein'
    return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.' # bug: no return
  end
end

puts 'Confucius says:'
puts '"' + get_quote('Confucius') + '"'