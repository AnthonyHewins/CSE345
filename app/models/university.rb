class University < ApplicationRecord
	has_many :student,
	dependent: :destroy
end
