class Concert < ApplicationRecord
	has_many :comment
	validates	:artist, presence: true
	validates	:venue, presence: true
	validates	:city, presence: true
	validates	:price, presence: true
	validates 	:description, presence: true


end
