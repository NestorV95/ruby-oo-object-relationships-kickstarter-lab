#require "pry"

class Project 
    attr_accessor :title

    @@all = []

    def initialize(title)
       @title = title
 #      binding.pry
    end

    def self.all
        @@all
    end
    
    def add_backer(backer)
        ProjectBacker.new(self , backer)
    end

    def backers
       backers =[]
       ProjectBacker.all.collect {|pb| backers << pb.backer if  pb.project == self}
       backers
    end


end 

#project responsiblities
#project initialize w/ title
#add_backer(backer) created projectbacker, using backer and project
#backers returns all backers associated with project