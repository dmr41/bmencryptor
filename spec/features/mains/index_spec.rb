require 'spec_helper'
require 'rails_helper'


describe "encrypt and decrypt redirects", :type => :feature do

  it "redirects to encryption page on click" do
    visit '/'
		expect(page).to have_content 'One Time Pad'
    click_on 'Encrypt'
    expect(page).to have_content 'Encryption'
  end

	it "redirects to decryption page on click" do
		visit '/'
		expect(page).to have_content 'One Time Pad'
		click_on 'Decrypt'
		expect(page).to have_content 'Decryption'
	end

end

# within("#session") do
# 	fill_in 'Email', :with => 'user@example.com'
# 	fill_in 'Password', :with => 'password'
# end
