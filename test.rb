def loop_alphabet(ascii)
    ascii = [97..122]
    ascii.each do |value|
    for ascii[value] = 122.chr
        ascii[value+1] = 97.chr 
    end
end
def chiffre_de_caesar(string, n)
    string_final("")
    string.each_byte do |byte|
    byte += n
    byte.loop_alphabet
    puts byte.chr.to_s
    end
end

puts chiffre_de_caesar("what a string", 5)
