def start_playing
  puts "What is your player name "
  print "> "
  player_name=gets.chomp
  return player_name
end

def lancé
    puts "press_enter"
    gets.chomp
    valeur_du_des =[1, 2, 3, 4, 5, 6].sample 
    return valeur_du_des
end 

def deplacement(valeur_du_des,positions)
  if valeur_du_des == 1
    positions -=1 if positions > 0
    puts "Vous descendez d'une marche , vous etes maintenant a la marche #{positions}"
  elsif valeur_du_des == 5 || valeur_du_des == 6
    positions += 1
    puts "Vous montez d'une marche,  vous etes maintenant a la marche #{positions}"
  else
    puts "Vous restez sur place,  vous etes maintenant a la marche #{positions}"
  end
  return positions
end

def victoire (positions)
  if positions >= 10
    puts " YOU WIN MTFCK"
    return true
  else
    return false 
  end
end


def perform
  player_name=start_playing
  puts "Hello, #{player_name}!"
  positions_joueur = 0

  loop do
    valeur_du_des=lancé
    puts "Vous avez fait #{valeur_du_des}\n\n"
    positions_joueur = deplacement(valeur_du_des,positions_joueur)
    if victoire(positions_joueur)
      break
    end
  end
end 

perform

def average_finish_time

end

