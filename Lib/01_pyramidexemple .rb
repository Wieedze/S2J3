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

def half_pyramide1(nb)  #droite
    nb.times do |i|     #boucle1
        floor = i + 1
        espace = nb - floor
        puts " " * espace + "#" * floor 
    end      
end

def half_pyramide2(nb)  #gauche
    nb.times do |i|     #boucle2
        floor = i + 1
        puts "#" * floor 
    end
end    

def perform  #resultat

    nb = ask_floor   #variable call


    nb.times do|i|   #formule 
        floor1 = i + 1          #floor1 definition
        espace1 = nb - floor1   #espace1 definition
        floor2 = i + 1          #floor2 definition

#pas besoin de espace 2

        print " " * espace1 + "#" * floor1  #meme formule que half pyramide 1 mais en print pour le retour a la ligne
        puts "#" * floor2                   #meme fomrule que half pyramide 2
    end
end

perform