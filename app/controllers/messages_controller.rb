class MessagesController < ApplicationController

	def new
		@message = Message.new
	end

	def create
		@message = Message.new(message_params)

		if @message.valid?
			MessageMailer.new_message(@message).deliver
			redirect_to contact_path, success: "Thank you for your message!"
		else
			render :new, error: "An error occurred while delivering this message."
		end
	end

	private

	def message_params
		params.require(:message).permit(:name, :email, :content)
	end

end
