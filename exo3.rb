=begin On prend une liste de stocks et chacune de leur valeur
sur un jour hypothétique. Le but est de faire ressortir une
paire de jours, l'un représentant le meilleur jour d'achat, l'autre
le meilleur pour la revente. Les jours commencent à 0 et il faut
acheter avant de revendre.
=end

def trader_du_dimanche(prices)
  # On assigne un nouveau hash pour y stocker les listes
  pairs = {}
  # On a besoin de deux listes avec un objet et son index pour chacune
  prices.each.with_index do |buy_price, buy_index|
    prices.each.with_index do |sell_price, sell_index|
      # On arrête la boucle lorsque l'index de vente
      # est inférieur à l'index d'achat
      next if sell_index < buy_index
      # On fait alors la différence entre le prix de vente
      # et le prix d'achat et on l'ajoute à notre hash
      pairs[[buy_index, sell_index]] = sell_price - buy_price
    end
  end
  # On store la paire ayant la plus grande différence
  pairs.key(pairs.values.max)
end

puts trader_du_dimanche([17,3,6,9,15,8,6,1,10])
