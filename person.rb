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

  def remove_number(arraynum)
    @phone_numbers.delete_at(arraynum)
  end
end

class FamilyMember < Person
attr_accessor :relationship
  def initialize(relationship="cousin", *args)
    @relationship = relationship
    super(*args)
  end
end

class AddressBook
  def initialize
    @bookarray = []
  end

  def add(person)
    @bookarray << person
  end

  def list
    @bookarray.each_with_index { |val,index| puts "- #{val}" }
  end
end
