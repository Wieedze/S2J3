def ask_floor  #entrée
    puts "Bienvenue dans le générateur de pyramide ! Veuillez entrer un nombre entre 1 et 25 :"
    print "> "
    nb = gets.chomp.to_i
    
    while nb < 1 || nb > 25     #verification du nombre saisie et saisir a nouveau si false 
    puts "Le nombre doit être entre 1 et 25. Veuillez réessayer :"
    print "> "
    nb = gets.chomp.to_i
    end
    return nb  # enregistrement de nb comme variable 
end

def fullpyramid(nb)         #full pyramid methode

    nb.times do |i|         #boucle pyramid
        floor = i + 1
        espace = nb - i - 1 
        puts " " * espace + "#" * ( 2 * floor - 1 )
        
    end
end    

def perform 
    nb =ask_floor
    fullpyramid(nb)
end

