=begin
require './perosn.rb'
require './voter.rb'
require './politician.rb'
=end
require './record.rb'
class UserI
  def main
    play = true
    while play
      puts  "Welcome to Voter Simulation 2017!"
      puts " You can make directory of voters or politicians"
      puts " You can list those voters or politicians"
      puts " You can even update and delete a voter or politician"
      puts "What would you like to do now?"
      puts " "
      puts "(C)reate, (L)ist, (U)pdate, (E)xit, or (D)elete"
      menu_choice = gets.chomp.downcase
      until menu_choice == "c" || menu_choice == "l" || menu_choice == "u" ||
        menu_choice == "e" || menu_choice == "d"
        puts "Invalid choice"
        menu_choice = gets.chomp.downcase
      end

      case menu_choice
      when "c"
        puts "What do you want to create?"
        puts ""
        puts "(V)oter or (P)olitician?"
        create_choice = gets.chomp.downcase
        until create_choice == "v" || create_choice == "p"
          puts "Invalid choice"
          create_choice = gets.chomp.downcase
        end
        create(create_choice)
      when "l"
        list
      when "u"
        puts "Who would you like to update?"
        puts "(V)oter or (P)olitician?"
        update_choice = gets.chomp.downcase
        until update_choice == "v" || update_choice == "p"
          puts "Invalid choice"
          update_choice = gets.chomp.downcase
        end
        update(update_choice)
      when "d"
        puts "Who would you like to delete?"
        puts "(V)oter or (P)olitician?"
        delete_choice = gets.chomp.downcase
        until delete_choice == "v" || delete_choice == "p"
          puts "Invalid choice"
          delete_choice = gets.chomp.downcase
        end
        delete(delete_choice)
      when "e"
        play = false
      else
      end
    end
  end

  # creates voter or politician
  def create(create_choice)
    if create_choice == "v"
      puts "What is the voter's name?"
      name = gets.chomp.downcase
      puts "What is the voter's affiliation?"
      puts ""
      puts "Socialist, Tea Party, Liberal, Conservative, Neutral"
      affiliation = gets.chomp.downcase
      @voters << Voter.new(name, affiliation).data_hash
      puts "Saved!"
    elsif create_choice == "p"
      puts "What is the politician's name?"
      name = gets.chomp.downcase
      puts "What is the politician's affiliation?"
      puts ""
      puts "Democratic, Republican"
      affiliation = gets.chomp.downcase
      @politicians << Politician.new(name, affiliation).data_hash
      puts "Saved!"
    end
  end

  # lists all voters and politicians
  def list
    puts "Here is a list of all the Voters!"
    puts ""
    @voters.each do |voter|
      puts "Voter: #{voter[:name]}, #{voter[:affiliation]}"
    end
    puts "Here is the list of all the Politicians!"
    puts ""
    @politicians.each do |politician|
      puts "Politician: #{politician[:name]}, #{politician[:affiliation]}"
    end
  end

  # update a voter or politician
  def update(update_choice)
    if update_choice == "v"
      puts "Which Voter would you like to update?"
      voter = gets.chomp.downcase
      voter_find(voter)
    elsif update_choice == "p"
      puts "Which Politician would you like to update?"
      politician = gets.chomp.downcase
      politician_find(politician)
    else
    end
  end

  # method to find the voter to update his/her name and affiliation in update
  def voter_find(voter)
    @voters.each do |voter1|
      if voter1[:name] == voter
        puts "What would you like to update?"
        puts "(N)ame or (A)ffiliation?"
        specific = gets.chomp.downcase
        if specific == "n"
          puts "What is the voter's new name?"
          voter1[:name] = gets.chomp.downcase
        elsif specific == "a"
          puts "What is the voter's new affiliation?"
          voter1[:affiliation] = gets.chomp.downcase
        end
      end
    end
  end

  # method to find the politician to update his/her name and affiliation in update
  def politician_find(politician)
    @politicians.each do |politician1|
      if politician1[:name] == politician
        puts "What would you like to update?"
        puts "(N)ame or (A)ffiliation?"
        specific = gets.chomp.downcase
        if specific == "n"
        puts "What is the Politician's new name?"
        politician1[:name] = gets.chomp.downcase
      elsif specific == "a"
        puts "What is the Politician's new affiliation?"
        politician1[:affiliation] = gets.chomp.downcase
      else
       end
     end
   end
 end

  def delete(delete_choice)
    if delete_choice == "v"
      puts "Which Voter would you like to delete?"
      voter = gets.chomp.downcase
      delete_voter(voter)
    elsif delete_choice == "p"
      puts "Which Politician would you like to delete?"
      politician = gets.chomp.downcase
      delete_politician(politician)
    end
  end



  def delete_voter(voter)
    @voters.each do |voter1|
      if voter1[:name] == voter
        puts "Are you sure you want to delete this Voter?"
        puts "Y / N"
        entry = gets.chomp.downcase
        if entry == "y"
          @voters.delete_if {|h| h[:name] == voter}
          puts "Deleted!"
        end
      end
    end
  end

  def delete_politician(politician)
    @politicians.each do |politician1|
      if politician1[:name] == politician
        puts "Are you sure you want to delete this Politician?"
        puts "Y / N"
        entry = gets.chomp.downcase
        if entry == "y"
          @politicians.delete_if{|h| h[:name] == politician}
          puts "Deleted!"
        end
      end
    end
  end



end

election = UserI.new
election.main