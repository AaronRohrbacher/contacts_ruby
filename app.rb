require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')
require('pry')

get('/') do
  @list = Contact.all()
  erb(:input)
end

post('/') do
  first_name = params["first_name"]
  last_name = params["last_name"]
  job_title = params["job_title"]
  company = params["company"]
  contact_type = params["contact_type"]

  test1 = Contact.new({:first_name => first_name, :last_name => last_name, :job_title => job_title, :company => company, :contact_type => contact_type})

  test1.save()
  @list = Contact.all()
  erb(:input)
end

get('/output/:id') do
  @id = params[:id]
  @contact = Contact.find(@id)
  # @list = Contact.all()
  erb(:output)
end
