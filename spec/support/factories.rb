FactoryGirl.define do
  sequence :subject_name do |n|
    "test#{n}"
  end

  factory :contact_inquiry do
    email "string"
    description "text"
    subject {generate(:subject_name)}
    first_name "string"
    last_name "string"
  end
end
