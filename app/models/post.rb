class Post < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged
	validates :title, presence: true, length: { minimum: 3 }
	validates :body, presence: true
end
