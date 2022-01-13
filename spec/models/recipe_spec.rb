require 'rails_helper'

RSpec.describe Recipe, type: :model do
  subject { Recipe.new(name: "Sernik", preparation: "Upiec", preparation_time: 60) }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a preparation" do
    subject.preparation = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a preparation_time" do
    subject.preparation_time = nil
    expect(subject).to_not be_valid
  end
end
