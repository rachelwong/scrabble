require 'rubygems'
require 'bundler/setup'
require 'ruby-dictionary'
require_relative 'scrabble_view'
require_relative 'scrabble_model'

class ScrabbleController

    def initialize
        @screen = ScrabbleView.new
        @model = ScrabbleModel.new
        @score = 0
        @dictionary = Dictionary.from_file('words.txt')
    end

    def run
        @screen.welcome
        new_word = ""
        while new_word != "Q"
            new_word = @screen.get_word
            word_array = new_word.split('')
            if dictionary(new_word) == true
                @score = calculate_score(new_word)
                @screen.accept(new_word)
                @screen.word_score(@score, new_word)
            else
                @screen.deny(new_word)
                @screen.word_score(@score, new_word)
            end
        end
        @screen.scoreboard(@score)
        @screen.goodbye
    end

    def calculate_score(new_word)
        # break the new_word into an array of letters
        # for each letter 
        # if it matches a key in @model
    end

    def dictionary(new_word)
        # is the word in the dictionary
        if @dictionary.exists?('#{new_word}')
            return true
        else # if the word is not in the dictionary
            return false
        end
    end

    def scramble
        # draw seven random letters from @model.get_letters
    end
end


# https://github.com/dwyl/english-words