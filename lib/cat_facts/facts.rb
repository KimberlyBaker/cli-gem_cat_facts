class CatFacts::Facts

    attr_accessor :text

    def initialize(text)
        @text = text
    end

    def self.all
        @@ll = self
    end

end


# def self.all
#fact_1 = self.new
#fact_1.text = "Different Sounds"

#fact_2 = self.new
#fact_2.text = "Habits"

#fact_3 = self.new
#fact_3.text = "Furball Name"

#fact_4 = self.new
#fact_4.text = "Popularity"

#[fact_1, fact_2, fact_3, fact_4]
#end