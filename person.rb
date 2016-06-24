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
    if person.is_a? Person || FamilyMember
      @bookarray << person
    else
      raise ArgumentError, "You must give a valid person object"
    end
  end

  def list
    puts address = "Address Book"
    puts "-" * address.length
    @bookarray.each_with_index do |person,k|
      puts "- #{k+1} #{person.fullname} "
   end
  end

  def load_yaml(filepath)
    YAML.load(File.open(filepath))
  end
end
