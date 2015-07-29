require 'spec_helper'
require 'rails_helper'


describe EncryptsController do

  it "decrypts a message with otp and encrypted message" do
    encrypt = Encrypt.create(:input_text => "jimmy")
    puts encrypt.input_text 
		expect(response).to have_content 'jimmy'
  end

end
