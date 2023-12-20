
class Encryption
    def initialize(alphabet, string, string2)
        @alphabet = alphabet
        @string = string
        @string2 = string2
        @vector_one = []
        @vector_two = []
    end

    def find_firstvalue
        @string.each_char do |char|
            @valor = @alphabet.to_h[char]
            @vector_one<<@valor
        end
        print @vector_one,"\n"
    end
    
    def find_secondvalue 
        @string2.each_char do |char|
        @valor2 = @alphabet.to_h[char]
        @vector_two<<@valor2
        end
    end 

    def aling_vector
        if (@vector_one.length < @vector_two.length)
            @size1 = @vector_one.length
            @vector_newtwo = @vector_two.slice(0,@size1)
        else
            
        end
        print @vector_newtwo,"\n"
    end

    def print_results;
        
    end

end

alphabet = {
    "A"=>0, "B"=>1, "C"=>2, "D"=>3, "E"=>4,
    "F"=>5, "G"=>6, "H"=>7, "I"=>8, "J"=>9,
    "K"=>10, "L"=>11, "M"=>12, "N"=>13,
    "Ñ"=>14, "O"=>15, "P"=>16, "Q"=>17,
    "R"=>18, "S"=>19, "T"=>20, "U"=>21,
    "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26}



print "Ingrese el mensaje original:"
    string = gets.chomp.upcase

print "Ingrese clave de cifrado:"
    string2 = gets.chomp.upcase

case_one = Encryption.new(alphabet, string, string2)
case_one.find_firstvalue
case_one.find_secondvalue
case_one.aling_vector