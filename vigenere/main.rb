# frozen_string_literal: true

class Encryption
  def initialize(alphabet, string, string2)
    @alphabet = alphabet
    @string = string
    @string2 = string2
    @vector_one = []
    @vector_two = []
    @vector_sum = []
  end

  def find_firstvalue
    @string.each_char do |char|
      @valor = @alphabet.to_h[char]
      @vector_one << @valor
    end
  end

  def find_secondvalue
    @string2.each_char do |char|
      @valor2 = @alphabet.to_h[char]
      @vector_two << @valor2
    end
  end

  def aling_vector
    if @vector_one.length < @vector_two.length
        @size1 = @vector_one.length
        @vector_newtwo = @vector_two.slice(0, @size1)
      else
        @vector_newtwo = @vector_two.cycle.take(@vector_one.length)
    end
  end 

  

  def sum_values
    
    (0...@vector_one.length).each do |i|
      indx = @vector_one[i] + @vector_newtwo[i]
      @vector_sum << indx
    end
    valid_array
  end

  def valid_array
    limit = 27
    value_less = 27
    @vector_sum.map! do |element|
      if element >= limit
        element - value_less
      else
        element
      end
    end
  end

  def find_encrypt
    inverted_alphabet = @alphabet.invert
    ciphertext = []
    @vector_sum.each do |num|
      letter = inverted_alphabet[num]
      ciphertext << letter
    end
    puts "Original message: #{@string}"
    puts "Encryption key: #{@string2}"
    puts "The encrypted message is: #{ciphertext.join('')}"
  end

  def uso
    find_firstvalue
    find_secondvalue
    aling_vector
    sum_values
    find_encrypt
  end
end

alphabet = {
    "A"=>0, "B"=>1, "C"=>2, "D"=>3, "E"=>4,
    "F"=>5, "G"=>6, "H"=>7, "I"=>8, "J"=>9,
    "K"=>10, "L"=>11, "M"=>12, "N"=>13,
    "Ñ"=>14, "O"=>15, "P"=>16, "Q"=>17,
    "R"=>18, "S"=>19, "T"=>20, "U"=>21,
    "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26
}

string = "HOLA"
string2 = "SECRETO"

# print "Type the original message:"
#     string = gets.chomp.upcase
# print "Type the encryption key:"
#     string2 = gets.chomp.upcase

case_one = Encryption.new(alphabet, string, string2)
case_one.uso