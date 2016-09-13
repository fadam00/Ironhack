class User < ApplicationRecord
	has_many :product
	validates :email, presence: true, uniqueness: true
end
