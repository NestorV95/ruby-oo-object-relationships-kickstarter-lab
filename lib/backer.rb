#require "pry"

class Backer
   attr_accessor :name

    def initialize(name)
      @name = name
      #binding.pry
    end

    def self.all
       @@all 
    end


    def find_project(project)
       ProjectBacker.all.find{|pb| pb.project == project ; pb << self}
    end
   
    def create_project(project)
       ProjectBacker.new(project, self)
    end 

    def back_project(project)
       find_project(project) || create_project(project)
    end
   
    def backed_projects
        projects =[]
        ProjectBacker.all.collect{ |pb| projects << pb.project if  pb.backer == self }
        projects
    end
         
end

#Backer responsibilites:
#initialize w/ name
#back_project(project) creates ProjectBacker(project, self)
#return all projects associated with self