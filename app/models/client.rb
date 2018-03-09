class Client < ApplicationRecord
	has_many :assessments, inverse_of: :client, dependent: :destroy
	accepts_nested_attributes_for :assessments

	validates :name, :email, :phone, :date_of_birth, :home_address, presence: true
end
