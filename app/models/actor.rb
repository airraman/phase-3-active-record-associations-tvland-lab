class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name
        #returns actors full name
        self.first_name + " " + self.last_name
    end 

    def list_roles
        #returns a list of roles for the actor using the character name and show name
        self.character + self.character.show
    end 


   
  
end