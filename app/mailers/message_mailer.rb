class MessageMailer < ActionMailer::Base

	default from: "robins.nu Mailer <snokstyle@gmail.com>"
	default to: "Robin Nilsson <robin@robins.nu>"

	def new_message(message)
		@message = message;

		mail subject: "Message from #{message.name}"
	end

end
