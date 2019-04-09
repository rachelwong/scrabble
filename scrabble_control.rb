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
        first_word = randomizer() # get random first word
        @screen.accept(first_word) # display the first word 

        letter_array = scramble() # draw random 7 letters
        @screen.show_scramble(letter_array) # display random 7 letters
        # while the user input is not q
        while new_word != "Q"
            new_word = @screen.get_word
            if dictionary(new_word) == true && use_previous(first_word, new_word) == true
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
                elsex
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
    def randomizer
        return RandomWord.nouns.next
    end

    # check if the new_word uses a letter from the first_word
    def use_previous(first_word, new_word)
        first_array = first_word.chars
        new_array = new_word.chars
        index = 0 
        for char in first_array do
            while index < new_array.length
                if char != new_array[index]
                    index += 1
                elsif char == new_array[index]
                    return true
                else
                    index +=1
                end
                return false
            end
        end
    end
end