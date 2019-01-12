class Participant < ApplicationRecord
	has_one :volunteer_detail
	has_one :reader_detail
end
