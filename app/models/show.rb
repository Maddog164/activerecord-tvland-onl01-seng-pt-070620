class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters

  def actors_list
    self.actors.collect do |character|
      actor.full_name
      # "#{character.name} - #{character.show.name}"
    end.join
  end

end
