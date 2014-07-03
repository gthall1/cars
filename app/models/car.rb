class Car < ActiveRecord::Base
belongs_to :make

validates :make_id, presence: true
validates :color, presence: true
validates :year, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 1920 }
validates :mileage, presence: true
end
