class Person
  attr_reader :dob, :first_name, :surname, :emails, :phone_numbers

  def initialize(fname,sname,dob = nil)
    @first_name = fname.capitalize
    @surname = sname.capitalize
    @dob = Date.parse(dob) if dob
    @emails = []
    @phone_numbers = []
  end

  def fullname
    "#{@first_name} #{@surname}"
  end

  def add_email(email)
    @emails << email
  end

  def add_phone(phone)
    @phone_numbers << phone
  end

  def remove_email(arraynum)
    @emails.delete_at(arraynum)
  end
end
