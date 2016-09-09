class User < ApplicationRecord
	has_many :product
	validate :email, presence: true, uniqueness: true
end
