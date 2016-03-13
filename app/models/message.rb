class Message

	include ActiveModel::Model
	include ActiveModel::Conversion
	include ActiveModel::Validations

	attr_accessor :name, :email, :content

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
	validates_length_of :name, minimum: 3, maximum: 30
	validates_length_of :content, minimum: 5, maximum: 1024

	validates :name,
		presence: true

	validates :email,
		presence: true

	validates :content,
		presence: true

end