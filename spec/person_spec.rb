require 'spec_helper'

describe Person do
  it 'should store and return personal information' do
    person = Person.new("joe", "bloggs", "1 Jan 1990")
    expect(person.dob).to eq Date.new(1990,1,1)
    expect(person.first_name).to eq "Joe"
    expect(person.surname).to eq "Bloggs"
    expect(person.fullname).to eq "Joe Bloggs"
  end

  it 'should have an optional date of birth' do
    person = Person.new("joe", "bloggs")
    expect(person.dob).to be_nil
  end

  it 'should store and read emails in an array' do
    person = Person.new("joe", "bloggs")
    person.add_email("joe@foo.com")
    person.add_email("joe.bloggs@work.com")
    expect(person.emails).to be_an(Array)
    expect(person.emails).to eq ["joe@foo.com", "joe.bloggs@work.com"]
  end

  it "should store and read numbers in an array" do
    person = Person.new("joe", "bloggs")
    person.add_phone("07867656789")
    person.add_phone("07863575479")
    expect(person.phone_numbers).to eq ["07867656789", "07863575479"]
  end

  it "should be able to remove an email from the array" do
    person = Person.new("joe", "bloggs")
    person.add_email("joe@foo.com")
    person.add_email("joe.bloggs@work.com")
    person.remove_email(1)
    expect(person.emails).to contain_exactly("joe@foo.com")
  end

  it "should be able to remove a phone number from the array" do
    person = Person.new("joe", "bloggs")
    person.add_phone("07867656789")
    person.add_phone("07863575479")
    person.remove_number(1)
    expect(person.phone_numbers).to contain_exactly("07867656789")
  end
end
