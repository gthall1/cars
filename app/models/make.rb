class Make < ActiveRecord::Base
has_many :cars

validates :name, presence: true
validates :origin, presence: true
end
