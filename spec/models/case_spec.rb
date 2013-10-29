require 'spec_helper'

describe Case do

  it 'has a valid factory' do
    FactoryGirl.create(:case).should be_valid
  end

  it 'is invalid without a case_id' do
    FactoryGirl.build(:case, case_id: nil).should_not be_valid
  end

end