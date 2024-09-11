# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

# Write a program that deciphers and prints each of these names:

require 'pry'

ALPHABET = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W Y X Z)
# 0-12, 13-25, 26-38, 39-51

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
]

def decipher
  ENCRYPTED_PIONEERS.map do |encrypted_name|
    name = ''
    idx = 52
    encrypted_name.each_char do |encrypted_char|
      idx = locate_char_idx(encrypted_char)
      # binding.pry
      case idx
      when 0..12, 26..38
        name += ALPHABET[idx + 13]
      when 13..25, 39..51
        name += ALPHABET[idx - 13]
      else
        name += encrypted_char
      end
    end
    puts name
  end
end

def locate_char_idx(char)
  index = 0
  ALPHABET.each_with_index do |letter, idx|
    index = idx if letter == char
    index = 52 if !ALPHABET.include? char
  end
  index
end

decipher
