
class ClassName
    def initialize(alphabet)
        @alphabet = alphabet
    end
    def find_letter

    end
end
@valor = 0

alphabet = {
    "A"=>0, "B"=>1, "C"=>2, "D"=>3, "E"=>4,
    "F"=>5, "G"=>6, "H"=>7, "I"=>8, "J"=>9,
    "K"=>10, "L"=>11, "M"=>12, "N"=>13,
    "Ñ"=>14, "O"=>15, "P"=>16, "Q"=>17,
    "R"=>18, "S"=>19, "T"=>20, "U"=>21,
    "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26}



print "Ingrese una palabra:"
    string = gets.chomp.upcase

string.each_char do |char|
    @valor = alphabet.to_h[char]
    puts @valor
end

sum = @valor + @valor
    puts sum



