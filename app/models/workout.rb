class Workout < ApplicationRecord
	belongs_to :client
	belongs_to :trainer
	validates :paid_amount, :numericality => true
end
