class Event < ActiveRecord::Base	
  has_many :event_registrations
  has_many :users, through: :event_registrations


def following?(other_event)
    associations.find_by(event_id: other_event.id)
  end

  def follow!(other_event)
    associations.create!(event_id: other_event.id)
  end

  def unfollow!(other_event)
    associations.find_by(event_id: other_event.id).destroy
  end
end