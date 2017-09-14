class Contact
  @@list = []
  attr_reader(:id)
  attr_accessor(:first_name, :last_name, :job_title, :company, :contact_type)
  def initialize(attributes)
    @first_name  = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company = attributes.fetch(:company)
    @contact_type = attributes.fetch(:contact_type)
    @id = @@list.length + 1
  end

  # def address

  def self.all()
    @@list
  end

  def self.find(id)
   item_id = id.to_i()
   @@list.each do |item|
     if item.id == item_id
       return item
     end
   end
  end

  def self.clear()
    @@list = []
  end

  def save()
    @@list.push(self)
  end
end
