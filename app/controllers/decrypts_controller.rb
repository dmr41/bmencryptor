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
		puts "#{one_time_pad} + lookat me"
		if(one_time_pad == "" && encrypted_message == "")
			@not_empty_state = false
			@content_size = true
		else
			@content_size = (one_time_pad.length == encrypted_message.length)
			@not_empty_state = true
		end
		if(@content_size && @not_empty_state )
			decryption_instance.decrypt_phrase(encrypted_message, one_time_pad)
			@unencrypted_message = decryption_instance.starting_phrase
			@single_pad = decryption_instance.one_time_phrase
			@encrypted_messsage = decryption_instance.encrypted_message
		end
	end

	def decrypt_params
		params.require(:decrypt).permit(:one_time_pad, :encrypted_message)
	end
end
