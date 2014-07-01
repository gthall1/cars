class Car < ActiveRecord::Base
belongs_to :makes

validates :make_id, presence: true
validates :color, presence: true
validates :year, inclusion: (1920..2014), presence: true
validates :mileage, presence: true
end
