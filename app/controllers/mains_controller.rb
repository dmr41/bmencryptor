class MainsController < ApplicationController

	def index
		@booly ||= false
		@main = Main.new
	end

	# def new
	# 	@main = Main.new
	# end
	def create
		@user_input = params[:main][:input_text]
		encryption_instance = OneTimePad.new(@user_input)
		encryption_instance.randomize_phrase
		encryption_instance.encrypt_phrase
		puts @user_input.length
		@unencrypted_message = encryption_instance.starting_phrase
		@single_pad = encryption_instance.one_time_phrase
		@encrypted_messsage = encryption_instance.encrypted_message
	end

end
