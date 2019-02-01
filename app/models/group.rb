class Group < ApplicationRecord
has_and_belongs_to_many :participants, join_table: :matchups



end
