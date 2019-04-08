require 'rubygems'
require 'bundler/setup'
require 'ruby-dictionary'
require 'random-word'

require_relative 'scrabble_view'
require_relative 'scrabble_model'

class ScrabbleController

    def initialize
        @screen = ScrabbleView.new
        @model = ScrabbleModel.new
        @score = 0 # Defaults to zero
    end

    # Main run-around
    def run
        @screen.welcome
        new_word = ""
        while new_word != "Q"
            new_word = @screen.get_word
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

    # Calculates the score for user inputted word
    def calculate_score(new_word)
        word_array = word.split('')
            for char in word_array do
                # if character is a key in hash
                if @model.letter_scores.has_key?(char)
                # increment score with value of key
                @score += @model.letter_scores[char]
                else
                # score does not change 
                @score += 0
                end
            end
        return @score
    end

    # checks whether the user inputted word is a valid word (in dictionary)
    def dictionary(new_word)
        # is the word in the dictionary
        if @model.dictionary.exists?(new_word)
            return true
        else # if the word is not in the dictionary
            return false
        end
    end
    
    # draw seven random letters from @model.get_letters
    def scramble
        (0...7).map { (65 + rand(26)).chr }
        return letter_array
    end

    # randomly generate the first word for the game
    def first_word
        @model.dictionary
    end
end