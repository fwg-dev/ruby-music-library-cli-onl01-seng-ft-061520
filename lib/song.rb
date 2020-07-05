class Song 
    attr_accessor :name 
@@all = []
    def initialize(name)
        @name = name 
        @@all << self 
        save 
    end 

    def self.all 
        @@all 
    end 
    def self.destroy_all 
       all.clear
    end 

    def save 
        @@all << self 
    end 
    def self.create(name) #review
        song = new(name)
        song.save
        song 
    end 

    
end 