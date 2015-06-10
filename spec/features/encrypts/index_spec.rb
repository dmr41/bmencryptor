require 'spec_helper'
require 'rails_helper'


describe "encryption ", :type => :feature do

  it "redirects to encryption page on click" do
    visit encrypts_path
		fill_in 'encrypt_input_text', :with => 'dmr'
    click_on 'Encrypt'
		expect(page).to have_content 'Your Message:'
		click_on 'New Encryption'
  end


end
