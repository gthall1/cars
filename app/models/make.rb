class Make < ActiveRecord::Base
has_many :cars

validates :name, presence: true
validates :country_of_origin, presence: true
end
