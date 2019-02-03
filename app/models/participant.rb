class Participant < ApplicationRecord
		has_one :volunteer_detail, :dependent => :destroy, inverse_of: :participant
		  accepts_nested_attributes_for :volunteer_detail,   :allow_destroy => :true

		has_one :student_detail, :dependent => :destroy, inverse_of: :participant
		  accepts_nested_attributes_for :student_detail,   :allow_destroy => :true

		has_and_belongs_to_many :groups, join_table: :matchups


		validates :last_name, presence: true
		# validates :gender, inclusion: { in: %w(male female) }
		validates :phone, presence: true

#adds :full_name to Participant model
  def full_name
    name = first_name + ' '
    name += last_name
    name
  end	


end
