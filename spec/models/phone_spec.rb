require 'spec_helper'
#针对电话Phone模型的测试
describe Phone do

	it "每个人不允许有相同的电话号码" do
    contact = Contact.create(firstname: 'Joe', lastname: 'Tester',
      email: 'joetester@example.com')
    home_phone = contact.phones.create(phone_type: 'home',
      phone: '785-555-1234')
    mobile_phone = contact.phones.build(phone_type: 'mobile',
      phone: '785-555-1234')
		expect(mobile_phone).to have(1).errors_on(:phone) 
	end

	it "允许两个不同的联系人有相同的号码" do
		contact = Contact.create(firstname: 'Joe', lastname: 'Tester',
      email: 'joetester@example.com')
		contact.phones.create(phone_type: 'home',
      phone: '785-555-1234')
    other_contact = Contact.new
    other_phone = other_contact.phones.build(phone_type:
      'home', phone: '785-555-1234')
		expect(other_phone).to be_valid 
	end

end