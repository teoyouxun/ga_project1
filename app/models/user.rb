class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :posts 
    has_many :followers 
end
