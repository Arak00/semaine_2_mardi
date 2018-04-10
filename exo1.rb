=begin
La fonction va se lancer 1000 fois et ajouter à
la somme les nombres qui sont multiples de 3 et
de 5
=end
def multiples_3_and_5()
  sum = 0
  1000.times do |i|
    if i % 5 == 0 || i % 3 == 0
       sum+=i
    end
  end
   puts sum
end
multiples_3_and_5()

#Trying to use perform but not sure of the result

def perform
  multiples_3_and_5()
end

perform
