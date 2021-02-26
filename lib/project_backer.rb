class ProjectBacker
   attr_accessor :project, :backer

   @@all=[]

    def initialize(project, backer)
       @project = project
       @backer = backer
       self.class.all << self
    end 

    def self.all
       @@all 
    end

end 

#ProjectBacker responsiblities
#should have @@all
#should have self.all >> @@all
