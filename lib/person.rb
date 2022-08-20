# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account


    def initialize (name)
        @name=name
        @bank_account=25
        @hygiene=8
        @happiness=8
    end

    def happiness=(value)
        @happiness = value
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness <0
    end

    def hygiene=(value)
        @hygiene = value
        @hygiene = 10 if @hygiene >10
        @hygiene = 0 if @hygiene <0
    end

    def clean?
        @hygiene > 7
    end
    
    def happy?
        @happiness >7
    end

    def get_paid(amount)
        @bank_account += amount
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -=3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        friend.happiness += 3
        self.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -=2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness +=1
            return "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

    
end
