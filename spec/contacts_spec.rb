require "rspec"
require "contacts"
require "pry"
describe("Contact#all") do
  it("creates and displays a basic contact list") do
    contact=Contact.new({:first_name=>"Erik", :last_name=>"Samsonite", :job_title=>"Douche Bag", :company=>"Blogs R Us", :contact_type=>"office"})
    contact.save()
    expect(Contact.all[0].first_name).to(eq("Erik"))
    Contact.clear()
  end

  describe("Contact#save") do
    it("save input to list") do
      contact=Contact.new({:first_name=>"Erik", :last_name=>"Samsonite", :job_title=>"Douche Bag", :company=>"Blogs R Us", :contact_type=>"office"})
      contact.save()
      second_contact=Contact.new({:first_name=>"Adam", :last_name=>"Goots", :job_title=>"Deeter", :company=>"Grundle", :contact_type=>"nunya"})
      second_contact.save()
      expect(Contact.all().length).to(eq(2))
      Contact.clear()
    end
    
  end
end
