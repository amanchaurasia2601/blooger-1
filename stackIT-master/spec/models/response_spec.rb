require 'rails_helper'

describe Response do
  it { should validate_presence_of :answer }
  it { should belong_to :question }
  it { should belong_to :user }

  it "will default best property to false when created" do
    test_r = FactoryGirl.create(:response)
    expect(test_r.best).to(eq(false))
  end
end
