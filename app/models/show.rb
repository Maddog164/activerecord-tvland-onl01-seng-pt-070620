class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.characters.collect do |character|
      binding.pry
      character.actor.full_name
      # "#{character.name} - #{character.show.name}"
    end.join
  end

end
