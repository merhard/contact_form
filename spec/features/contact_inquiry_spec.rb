require 'spec_helper'


describe 'Contact Inquiry submission' do
  it 'adds a contact inquiry when it is submitted' do
    visit '/contact_inquiry/new'
    click_on 'Create Contact inquiry'
    expect(page).to have_content('created successfully')
  end
end

