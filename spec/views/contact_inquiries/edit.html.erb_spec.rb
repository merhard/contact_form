require 'spec_helper'

describe "contact_inquiries/edit" do
  before(:each) do
    @contact_inquiry = assign(:contact_inquiry, stub_model(ContactInquiry,
      :email => "MyString",
      :subject => "MyString",
      :description => "MyText",
      :first_name => "MyString",
      :last_name => "MyString"
    ))
  end

  it "renders the edit contact_inquiry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", contact_inquiry_path(@contact_inquiry), "post" do
      assert_select "input#contact_inquiry_email[name=?]", "contact_inquiry[email]"
      assert_select "input#contact_inquiry_subject[name=?]", "contact_inquiry[subject]"
      assert_select "textarea#contact_inquiry_description[name=?]", "contact_inquiry[description]"
      assert_select "input#contact_inquiry_first_name[name=?]", "contact_inquiry[first_name]"
      assert_select "input#contact_inquiry_last_name[name=?]", "contact_inquiry[last_name]"
    end
  end
end
