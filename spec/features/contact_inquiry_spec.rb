require 'spec_helper'


describe 'Contact Inquiry submission' do
  it 'requires all fields to be filled for valid submission' do
    visit '/contact_inquiries/new'
    click_on 'Create Contact inquiry'
    expect(page).to have_content('can\'t be blank')
  end

  it 'submits an inquiry when all fields are filled' do
    inquiry = FactoryGirl.create(:contact_inquiry)
    visit '/contact_inquiries/new'
    fill_in 'First name', :with => 'string'
    fill_in 'Last name', :with => 'string'
    fill_in 'Subject', :with => 'string'
    fill_in 'Email', :with => 'string'
    fill_in 'Description', :with => 'text'
    click_on 'Create Contact inquiry'
    expect(page).to have_content('successfully created')
  end
end

describe 'Contact Inquiry browsing' do
  it 'shows a contact inquiry' do
    inquiry = FactoryGirl.create(:contact_inquiry)
    visit '/contact_inquiries'
    expect(page).to have_content(inquiry.subject)

  end

  it 'shows 3 contact inquiries' do
    inquiry1 = FactoryGirl.create(:contact_inquiry)
    inquiry2 = FactoryGirl.create(:contact_inquiry)
    inquiry3 = FactoryGirl.create(:contact_inquiry)

    visit '/contact_inquiries'

    expect(page).to have_content(inquiry1.subject)
    expect(page).to have_content(inquiry2.subject)
    expect(page).to have_content(inquiry3.subject)
  end



end

