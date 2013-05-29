require 'spec_helper'

describe ContactInquiry do
  let(:inquiry) {inquiry = FactoryGirl.build(:contact_inquiry)}

  it 'validates that I specify a first name' do
    inquiry.first_name = nil
    expect(inquiry).to_not be_valid
  end

  it 'validates that I specify a last name' do
    inquiry.last_name = nil
    expect(inquiry).to_not be_valid
  end

  it 'validates that I specify a email' do
    inquiry.email = nil
    expect(inquiry).to_not be_valid
  end

  it 'validates that I specify a subject' do
    inquiry.subject = nil
    expect(inquiry).to_not be_valid
  end

  it 'validates that I specify a description' do
    inquiry.description = nil
    expect(inquiry).to_not be_valid
  end




  it 'stores created contact inquiries' do
    3.times {FactoryGirl.create(:contact_inquiry)}
    expect(ContactInquiry.all.count).to eq(3)
  end


  it 'removes destroyed contact inquiries' do
    FactoryGirl.create(:contact_inquiry)
    previous_count = ContactInquiry.count
    ContactInquiry.last.destroy
    expect(ContactInquiry.count).to eq(previous_count-1)
  end

end
