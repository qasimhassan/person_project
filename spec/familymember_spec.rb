require 'spec_helper'

describe FamilyMember do
  it "should be able to add relationship value to a new person" do
    fm = FamilyMember.new("cousin", "joe", "bloggs", "1 Jan 1990")
    expect(FamilyMember).to be < Person
    expect(fm.relationship).to eq "cousin"
  end
end
