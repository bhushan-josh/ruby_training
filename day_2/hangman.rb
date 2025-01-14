def hangman
  hint = ['Body Part','Profession','Animal','Movie', 'Fruit']
  word_to_guess = ['hand','pilot', 'dog', 'war','mango']
  chances = 5
  level = 0

  loop do
    current_word = word_to_guess[level]
    display_string = '-' * current_word.length

    while chances > 0 and current_word != display_string
      print "\n"
      print "------------------------------------ HangMan ------------------------------------\n"
      print "\n\n"
      print "Guess the word by help of given hint, You have 5 chances".center(80)
      print "\n\n"
      print ("Level : #{level + 1}\t Chances :  #{chances}").center(80)
      print "\n\n"
      puts "---------------------------------------------------------------------------------"
      print "\n"
      print ("Hint => #{hint[level]}").center(80)
      print "\n\n"
      puts "---------------------------------------------------------------------------------"
      print "\n\n"
      print ("[#{display_string}]").center(80)
      print "\n"

      user_input = gets.chomp
      
      user_index = current_word.index(user_input)
      
      if user_index
          display_string[user_index] = user_input
      else
          chances -= 1
          puts ("Wrong guess user remaing chances : #{chances}").center(80)
          sleep(1)
      end

      system("clear")

      if current_word == display_string
        print "\n"
        puts "---------------------------------------------------------------------------------"
        print "\n"
        print ("Congratulation level #{level + 1} has been cleared!!!").center(80)
        print "\n\n"
        puts "---------------------------------------------------------------------------------"
      elsif chances == 0 and current_word != display_string
        print "\n"
        puts "---------------------------------------------------------------------------------"
        print "\n"
        puts "You are dead, Try again!!!".center(80)
        break
      end

    end

    # To exit game after all chances end.
    if chances == 0 and current_word != display_string
        break
    end

    chances = 5
    level += 1

    if level == 5
      print "\n-------------------- You had successfully completed the Game --------------------\n"
      break
    end

    sleep(2)
    system("clear")
  end

  print "\n----------------------------------- ©bhushan ------------------------------------\n"
  print "---------------------------------------------------------------------------------\n"

  sleep(5)
  system("clear")

end

system("clear")
hangman