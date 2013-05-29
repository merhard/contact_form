require 'spec_helper'


describe 'Contact Inquiry submission' do
  it 'requires all fields to be filled for valid submission' do
    visit '/contact_inquiries/new'
    click_on 'Create Contact inquiry'
    expect(page).to have_content('can\'t be blank')
  end
end

