class Student < ApplicationRecord
	belongs_to :university
	has_one :member, dependent: :destroy
	has_many :message, dependent: :destroy
end
