require "rspec"
require "contacts"
require "pry"
describe("Contact#addresses") do
  it("creates and displays a basic contact list") do
    contact=Contact.new({:first_name=>"Erik", :last_name=>"Samsonite", :job_title=>"Douche Bag", :company=>"Blogs R Us", :contact_type=>"office"})
    contact.save()
    expect(Contact.all[0].first_name).to(eq("Erik"))
  end
end
