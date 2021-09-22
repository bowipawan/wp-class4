class User < ApplicationRecord
	has_many :posts
	validates :email, presence: true
	validates :pass, presence: true, uniqueness: true
end
