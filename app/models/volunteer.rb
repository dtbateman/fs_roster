class Volunteer < ApplicationRecord
	validates :last_name, presence: true
 #  validates :gender, inclusion: { in: %w(male female) }
  validates :phone, presence: true
end
