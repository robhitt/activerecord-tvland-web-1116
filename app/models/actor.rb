class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  #can list all of its shows and characters (FAILED - 1)
  def list_roles
    #{#{character_name} - #{show_name}"
    roles_array = []

    #"Khaleesi - Game of Thrones"
    self.characters.each do |character|
      self.shows.each do |show|
        roles_array << "#{character.name} - #{show.name}"
      end
    end

    roles_array
  end
end
