
class ScrabbleModel
    def scores
        {  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
          "E"=>1, "F"=>4, "G"=>2, "H"=>4,
          "I"=>1, "J"=>8, "K"=>5, "L"=>1,
          "M"=>3, "N"=>1, "O"=>1, "P"=>3,
          "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
          "U"=>1, "V"=>4, "W"=>4, "X"=>8,
          "Y"=>4, "Z"=>10
        }
    end

    def get_letters(letter_id)
      case letter_id
      when 1
        return "a"
      when 2
        return "b"
      when 3
        return "c"
      when 4
        return "d"
      when 5
        return "e"
      when 6
        return "f"
      when 7
        return "g"
      when 8
        return "h"
      when 9
        return "i"
      when 10
        return "j"
      when 11
        return "k"
      when 12
        return "l"
      when 13
        return "m"
      when 14
        return "n"
      when 15
        return "o"
      when 16
        return "p"
      when 17
        return "q"
      when 18
        return "r"
      when 19
        return "s"
      when 20
        return "t"
      when 21
        return "u"
      when 22
        return "v"
      when 23
        return "w"
      when 24
        return "x"
      when 25
        return "y"
      when 26
        return "z"
    end
end

# searches the dictionary for instances of the word
# dictionary = Dictionary.from_file('words.txt')
# p dictionary.exists?('xbatjour')