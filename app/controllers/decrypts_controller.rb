class DecryptsController < ApplicationController

	def index
		@decrypt = Decrypt.new
	end

	def show
	end

	def create
		one_time_pad = params[:decrypt][:one_time_pad]
		encrypted_message = params[:decrypt][:encrypted_message]
		decryption_instance = OneTimePad.new
		decryption_instance.decrypt_phrase(encrypted_message, one_time_pad)
		@unencrypted_message = decryption_instance.starting_phrase
		@single_pad = decryption_instance.one_time_phrase
		@encrypted_messsage = decryption_instance.encrypted_message
	end

	def decrypt_params
		params.require(:decrypt).permit(:one_time_pad, :encrypted_message)
	end
end
