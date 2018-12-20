class Volunteer < ApplicationRecord
	validates :last_name, presence: true
  validates :gender, inclusion: { in: %w(male female) }
  # validates :nationality, presence: true
  validates :phone, presence: true
end
