class EncryptsController < ApplicationController

	def index
		@encrypt = Encrypt.new
	end

	def show
	end

	def create
		@user_input = params[:encrypt][:input_text]
		encryption_instance = OneTimePad.new(@user_input)
		encryption_instance.randomize_phrase
		encryption_instance.encrypt_phrase
		@unencrypted_message = encryption_instance.starting_phrase
		@single_pad = encryption_instance.one_time_phrase
		@encrypted_messsage = encryption_instance.encrypted_message
	end

	def encrypt_params
		params.require(:encrypt).permit(:input_text)
	end
end
