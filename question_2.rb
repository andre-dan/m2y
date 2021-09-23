class User < ApplicationRecord
	has_many :events
	has_many :awards, through: :events
end

class Event < ApplicationRecord
	belongs_to :user
	has_many :award
end

class Award < ApplicationRecord
	belongs_to :event
	belongs_to :user
end