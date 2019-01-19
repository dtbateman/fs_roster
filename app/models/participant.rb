class Participant < ApplicationRecord
		validates :last_name, presence: true
		# validates :gender, inclusion: { in: %w(male female) }
		validates :phone, presence: true
		has_one :volunteer_detail, :dependent => :destroy
		  accepts_nested_attributes_for :volunteer_detail,   :allow_destroy => :true

		has_one :student_detail, :dependent => :destroy
		  accepts_nested_attributes_for :student_detail,   :allow_destroy => :true

end
