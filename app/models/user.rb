class User < ApplicationRecord
	has_many :posts
	validates :email, presence: true, uniqueness: true
	has_secure_password
end
