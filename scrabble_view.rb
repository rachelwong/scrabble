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
        puts
        puts "The word to challenge is now #{new_word}."
        gets
    end

    # deny your incoming word
    def deny(new_word)
        puts
        puts "#{new_word} not acceptable --- Please try again."
        gets
    end

    # ask for a word
    def get_word
        puts 
        puts "Please enter a word using a letter from \n the previous word and letters from your stack."
        puts
        new_word = gets.chomp.upcase
    end

    # score for the word
    def word_score(score, new_word)
        puts
        puts "You have scored #{score} for #{new_word}."
        puts
    end

    def error(new_word)
        puts 
        puts "Your inputted word must take a letter from the previous word"
    end

    def show_scramble(letter_array)
        puts " --------------------- "
        puts "   Your letters are "
        puts
        for char in letter_array do
            print "#{char.to_s.upcase} "
        end
        puts
        puts
        puts " --------------------- "
    end
end