class Trainer < ApplicationRecord
	has_many :workouts
	validates :height, :numericality => true
	validates :current_weight, :numericality => true
end
