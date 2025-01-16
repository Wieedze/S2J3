def sign_up
  puts "create your password"
  print "> "
  password=gets.chomp
  return password
end

def login(password)
  puts "enter your password"
  print "> "
  verif=gets.chomp

  while verif != password
    puts "wrong password"
    print "enter again> "
    verif = gets.chomp
    end
end

def welcome

  verif=sign_up
  login(verif)

puts " welcome to NASA"
puts " you unlock all secret in NASA files "
end

welcome