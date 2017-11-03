class Post < ApplicationRecord
	belongs_to :user
	validates :title, length: { in: 5..10 }
	validates :title,:body, presence: true
end
