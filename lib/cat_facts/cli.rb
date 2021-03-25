# CLI Controller (used for user interation, greetings, input, etc.)

class CatFacts::CLI
    def call
        puts "\n"
        puts "Cat Facts"
        puts "\n"
        ask_quest
        list_fact
        #done
    end

    def ask_quest
        puts <<-DOC.gsub /^\s*/, ''
            Would you like to see a cat fact?
            Type y (Yes), n (No), or e (Exit).
        DOC
    end

    def list_fact
        input = nil
        while input != "e"
            input = gets.strip.downcase
            case input
            when "y"
                puts "\n"
                puts "-------------------------------------"
                puts "CAT FACT: HERE"
                puts "-------------------------------------"
                puts "\n"
                puts <<-DOC.gsub /^\s*/, ''
                Would you like to see another cat fact?
                Type y (Yes), n (No), or e (Exit).
                DOC
            when "n"
                puts "\n"
                puts "Aw, bummer! :(  Type e to exit."
            when "e"
                puts "\n"
                puts "See you next time for more floofy facts! :)"
            else
                puts "\n"
                puts "Oops! Try again. Type y (Yes), n (No), or e (Exit) please."
            end
        end
        @catfacts = CatFacts::Facts.all
    end

    #def done
    #    puts "\n"
    #    puts "See you next time for more floofy facts! :)"
    #end

end