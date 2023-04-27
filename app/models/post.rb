class Post < ApplicationRecord
    belongs_to :user, :optional => true
    has_many :likes, dependent: :destroy
end
