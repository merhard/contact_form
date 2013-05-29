class ContactInquiry < ActiveRecord::Base
  attr_accessible :description, :email, :first_name, :last_name, :subject
end
