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

        new_word = ""
        while new_word != "Q"
            @screen.ask_word
            new_word = @screen.get_word
            # if word is in dictionary AND word uses a letter from the previous word 
            if dictionary(new_word) == true && use_previous(first_word, new_word) == true
                p "Correct word & Use_previous is TRUE "
                p "Dictionary check is #{dictionary(new_word)}"
                p "Use previous check is #{use_previous(first_word, new_word)}"
                @score = calculate_score(new_word)
                @screen.accept(new_word)
                @screen.word_score(@score, new_word)
            # if word is in dictionary AND word does NOT use a letter from previous word
            elsif dictionary(new_word) == true && use_previous(first_word, new_word) == false
                p "Dictionary check is #{dictionary(new_word)}"
                p "Use previous check is #{use_previous(first_word, new_word)}"
                @screen.error(new_word)
            elsif dictionary(new_word) == false
                p "Incorrect word"
                @screen.error(new_word)
            end
        end
        @screen.scoreboard(@score)
        @screen.goodbye
    end

    # Calculates the score for user inputted word
    def calculate_score(new_word)
        word_array = new_word.split('')
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
        letter_array = (0...7).map { (65 + rand(26)).chr }
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
    
        while index < new_array.length
            if first_array.include? (new_array[index])
                return true
            else
                index += 1
            end
            return false
        end
    end
end