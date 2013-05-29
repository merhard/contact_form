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

end
