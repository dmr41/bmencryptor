require 'spec_helper'
require 'rails_helper'


describe "decryption", :type => :feature do

  it "decrypts a message with otp and encrypted message" do
    visit decrypts_path
		fill_in 'decrypt_one_time_pad', :with => 'Kmq'
		fill_in 'decrypt_encrypted_message', :with => '/Zc'
    click_on 'Decrypt'
		expect(page).to have_content 'dmr'
  end
	
end
