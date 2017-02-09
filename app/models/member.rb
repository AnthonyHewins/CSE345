class Member < ApplicationRecord
	belongs_to :student
	has_many :service, dependent: :destroy
	has_many :event, dependent: :destroy
end
