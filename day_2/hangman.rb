    
def hangman

    hint = ['Body Part','Profession','Animal','Movie', 'Fruit']
    word_to_guess = ['hand','pilot', 'dog', 'war','mango']
    display_string = ['----','-----','---','---','-----']
    chances = 5
    level = 0

    loop do
            print "\n------------------------------------ HangMan ------------------------------------\n"
            print "\n\n"
            print "Guess the word by help of given hint, You have 5 chances".center(80)
            print "\n\n"
            print ("Level : "+(level+1).to_s).center(80)
            print "\n\n"
            puts "---------------------------------------------------------------------------------"
            print "\n"
            print ("Hint => "+hint[level]).center(80)
            print "\n\n"
            puts "---------------------------------------------------------------------------------"
            print "\n\n"


            print ("["+ display_string[level] +"]").center(80)
            print "\n"

            while chances > 0 and word_to_guess[level] != display_string[level]

                user_input = gets.chomp
                
                user_index = word_to_guess[level].index(user_input)
                
                if user_index
                    display_string[level][user_index] = user_input
                else
                    chances -= 1
                    puts ("Wrong guess user remaing chances : "+chances.to_s).center(80)
                end

                print "\n"
                print ("["+ display_string[level] +"]").center(80)
                print "\n"

                if word_to_guess[level] == display_string[level]
                    print "\n"
                    print ("Congratulation level has been cleared").center(80)
                    print "\n\n"
                    puts "---------------------------------------------------------------------------------"

                elsif chances == 0 and word_to_guess[level] != display_string[level]
                    print "\n"
                    puts "You are dead, Try in next life".center(80)
                    break
                end
            end

            if chances == 0 and word_to_guess[level] != display_string[level]
                break
            end

            chances = 5
            level += 1
            if level == 5
                print "\n-------------------- You had successfully completed the Game --------------------\n"
                break
            end
            sleep(1)
            system("clear")
    end

    print "\n----------------------------------- ©bhushan ------------------------------------\n"
    puts    "---------------------------------------------------------------------------------\n\n\n\n"

end

hangman