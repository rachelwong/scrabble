class ScrabbleView

    # welcome screen
    def welcome
        puts
        puts "Welcome to a new Scrabble Game!"
        gets
    end

    # goodbye screen
    def goodbye
        puts "Thanks for playing!"
    end

    # Display total score
    def scoreboard(score)
        puts "***************************"
        puts "Your total score is #{score}."
        puts "***************************"
        gets
    end

    # accept your incoming word
    def accept(new_word)
        system("clear")
        puts
        puts "The word to challenge is now"
        puts
        puts "      #{new_word.upcase}"
        gets
    end

    # deny your incoming word
    def deny(new_word)
        puts
        puts "#{new_word} not acceptable --- Please try again."
        gets
    end

    # ask for a word
    def ask_word
        puts 
        puts "Please enter a word using any letter from\nthe previous word and letters from your stack."
        puts
    end

    def get_word
        new_word = gets.strip.upcase
        return new_word
    end

    # score for the word
    def word_score(score, new_word)
        puts
        puts "You have scored #{score} for #{new_word}."
        puts
    end

    def error(new_word)
        puts "#{new_word} is not acceptable."
        puts "Your inputted word must take a letter from the previous word"
    end

    def show_scramble(letter_array)
        puts " --------------------- "
        puts "  You drew a stack of 7 letters: "
        puts
        for char in letter_array do
            print "#{char.to_s.upcase} "
        end
        puts
        puts " --------------------- "
    end
end