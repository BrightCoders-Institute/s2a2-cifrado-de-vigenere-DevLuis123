
class Encryption
    def initialize(string, string2)
        @alphabet = Hash[('A'..'Z').zip(0..26)]
        @string = string
        @string2 = string2
        @vector_one = []
        @vector_two = []
        @vector_sum = []
    end

    def find_firstvalue
        @string.each_char do |char|
            @valor = @alphabet.to_h[char]
            @vector_one<<@valor
        end
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
    end

    def sum_values
        for i in (0...@vector_one.length) do
            indx = @vector_one[i] + @vector_newtwo[i] 
            @vector_sum<<indx
        end
    end
    def find_encrypt 
        inverted_alphabet = @alphabet.invert
        ciphertext=""
        @vector_sum.each do |num|
            letter=inverted_alphabet[num]
            ciphertext << letter
        end
        puts "The encrypted message is: #{ciphertext}"
    end
end



print "Type the original message:"
    string = gets.chomp.upcase

print "Type the encryption key:"
    string2 = gets.chomp.upcase

case_one = Encryption.new(string, string2)
case_one.find_firstvalue
case_one.find_secondvalue
case_one.aling_vector
case_one.sum_values
case_one.find_encrypt