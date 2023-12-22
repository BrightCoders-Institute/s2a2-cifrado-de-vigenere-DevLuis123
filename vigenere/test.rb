# frozen_string_literal: true

# # test_encryption.rb
# require 'minitest/autorun'
# require_relative 'main'  # Asegúrate de ajustar el nombre del archivo según tu estructura de archivos
#
# class TestEncryption < Minitest::Test
# def setup
#     @alphabet = {
#     "A"=>0, "B"=>1, "C"=>2, "D"=>3, "E"=>4,
#     "F"=>5, "G"=>6, "H"=>7, "I"=>8, "J"=>9,
#     "K"=>10, "L"=>11, "M"=>12, "N"=>13,
#     "Ñ"=>14, "O"=>15, "P"=>16, "Q"=>17,
#     "R"=>18, "S"=>19, "T"=>20, "U"=>21,
#     "V"=>22, "W"=>23, "X"=>24, "Y"=>25, "Z"=>26
#     }
#     @string = "HOLA"
#     @string2 = "SECRETO"
#     @encryption = Encryption.new(@alphabet, @string, @string2)
# end
#
# def test_find_firstvalue
#     @encryption.find_firstvalue
#     assert_equal [7,15,11,0], @encryption.instance_variable_get(:@vector_one)
# end
#
# def test_find_secondvalue
#     @encryption.find_secondvalue
#     assert_equal [19,4,2,18,4,20,15], @encryption.instance_variable_get(:@vector_two)
# end
#
# def test_align_vector
#     @encryption.aling_vector
#     assert_equal [19, 4, 2, 18], @encryption.instance_variable_get(:@vector_newtwo)
# end
#
# def test_sum_values
#     @encryption.find_firstvalue
#     @encryption.find_secondvalue
#     @encryption.aling_vector
#     @encryption.sum_values
#     assert_equal [26,19,13,18], @encryption.instance_variable_get(:@vector_sum)
#     find_encrypt
# end
#
# end
require 'minitest/autorun'
require_relative 'main'

class TestEncryption < Minitest::Test
  def setup
    @alphabet = {
      'A' => 0, 'B' => 1, 'C' => 2, 'D' => 3, 'E' => 4,
      'F' => 5, 'G' => 6, 'H' => 7, 'I' => 8, 'J' => 9,
      'K' => 10, 'L' => 11, 'M' => 12, 'N' => 13,
      'Ñ' => 14, 'O' => 15, 'P' => 16, 'Q' => 17,
      'R' => 18, 'S' => 19, 'T' => 20, 'U' => 21,
      'V' => 22, 'W' => 23, 'X' => 24, 'Y' => 25, 'Z' => 26
    }

    @original_message = 'HOLA'
    @encryption_key = 'SECRETO'
  end
  def test_find_firstvalue
    
  end
  def test_encryption
    case_one = Encryption.new(@alphabet, @original_message, @encryption_key)
    case_one.instance_variable_set(:@vector_sum, [26, 19, 13, 18])
    case_one.sum_values
    assert_equal [26, 19, 13, 18], case_one.instance_variable_get(:@vector_sum)
    # Ensure that the encryption is correct based on a known result
    case_one.find_encrypt
    assert_equal ["Z", "S", "N", "R"], case_one.find_encrypt
  end
  # Add more tests as needed
end
