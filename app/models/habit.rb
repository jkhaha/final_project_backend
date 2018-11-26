class Habit < ApplicationRecord
  has_many :entries
  belongs_to :user
end
