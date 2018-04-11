=begin
Le but de cet exercice est de demander un mot de passe à un utilisateur
écrit en toutes lettres, puis le décaler en demandant un nombre précis à
l'utilisateur et le retourner ainsi nouvellement chiffré.
=end

def chiffre_de_caesar(string, position)
# On store une variable string vide que l'on va remplir par la suite
position_finale = ""
# on va faire répéter le string en transformant chaque lettre du string
# en byte en se basant sur l'index ASCII
string.each_byte do |byte|
# si l'on se trouve entre A et Z on créé une 1ère variable pour storer le décalage
# puis on incrémente le string en fonction de la valeur du décalage et on affiche le résultat dans la
# position finale que l'on retransforme en lettre
  if byte >= 97 && byte <= 122
     decalage = ((byte+position-97)%26)+97
     position_finale += decalage.chr
# si l'on se trouve entre a et z on créé une 1ère variable pour storer le décalage
# puis on incrémente le string en fonction de la valeur du décalage et on affiche le résult dans la
# position finale que l'on retransforme en lettre
  elsif byte >= 65 && byte <= 90
    decalage = ((byte+position-65)%26)+65
    position_finale += decalage.chr
  else
    position_finale += byte.chr
  end
end
print position_finale

end

# On demande le mot de passe de l'utilisateur
puts "Veuillez indiquer votre mot de passe ?"
string = gets.chomp
# On demande le nombre souhaité pour chiffrer le mot de passe
puts "De combien souhaitez-vous le chiffrer ?"
position = gets.chomp.to_i

chiffre_de_caesar(string, position)
