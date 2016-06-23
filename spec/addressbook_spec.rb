require 'spec_helper'

describe AddressBook do
  it "should be able to create a new address book" do
    book = AddressBook.new
    expect(book).to be_a AddressBook
  end

  it "should be able to add a person to an address book" do
    person1 = Person.new("joe", "blogs", "1 Jan 1990")
    person1.add_email("joe@foo.com")
    person1.add_phone("07863575479")
    person2 = Person.new("andy", "nother", "2 Jan 1995")
    person2.add_email("andy@foo.com")
    person2.add_phone("07863575479")
    book = AddressBook.new
    book.add person1
    book.add person2

  #  expect(book).to contain_exactly()
  end

  it "should throw an error if the add method is passed anything but a Person or FamilyMember object." do

  end

  #let(Person) {}

  it "should print out all the details in an address book" do

  end
end
