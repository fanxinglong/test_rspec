require 'spec_helper'
#针对联系人Contact模型的测试
describe Contact do

 	it "有姓和名，邮箱的实体是合法的" do
 		contact = Contact.new(
 			firstname: 'Aaron',
    	lastname: 'Sumner',
    	email: 'tester@example.com'
  	)
  	expect(contact).to be_valid
	end

  it "没有姓是不合法的实体" do
  	contact = Contact.new(
 			firstname: nil,
    	lastname: 'Sumner',
    	email: 'tester@example.com'
  	)
  	expect(contact).to be_invalid
  	#expect(Contact.new(firstname: nil)).to have(1).errors_on(:firstname)
  end

  it "没有名是不合法的实体" do
  	expect(Contact.new(lastname: nil)).to have(1).errors_on(:lastname)
  end
  
  it "没有邮箱是不合法的实体" do
  	expect(Contact.new(email: nil)).to have(1).errors_on(:email)
  end
  
  it "邮箱地址是重复的是不合法的" do
  	#首先数据库中已经存在一个email为tester@example.com的联系人
  	Contact.create(
 			firstname: 'Aaron',
    	lastname: 'Sumner',
    	email: 'tester@example.com'
  	)
  	Jack = Contact.new(
 			firstname: 'Baron',
    	lastname: 'Mike',
    	email: 'tester@example.com'
  	)
  	expect(Jack).to have(1).errors_on(:email)
  end
  
  it "作为一个字符串返回联系人的全名称" do
    contact = Contact.new(firstname: 'Jhon', lastname: 'Doe', email: 'jhondoe@example.com')
    expect(contact.name).to eq 'Jhon Doe'
	end

  describe "最后的名按字母进行过滤" do

    before :each do
      @smith = Contact.create(firstname: 'Jhon', lastname: 'Smith', email: 'jsmith@example.com')
      @jones = Contact.create(firstname: 'Tim', lastname: 'Jones', email: 'tjones@example.com')
      @johnson = Contact.create(firstname: 'Jhon', lastname: 'Jhonson', email: 'jjohnson@example.com')

    end

    context "匹配字母的联系人" do
      it "包含大写字母J的名" do
        expect(Contact.by_letter("J")).to eq [@johnson, @jones]
      end
    end

    context "不匹配字母的联系人" do
      it "不包含大写字母J的名" do
        expect(Contact.by_letter("J")).to_not include @smith
      end
    end

  end
end