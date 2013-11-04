require 'spec_helper'

describe ClearCase do

  it 'has a valid factory' do
    FactoryGirl.create(:clear_case).should be_valid
  end

  it 'is invalid without an rd_no' do
    FactoryGirl.build(:clear_case, rd_no: nil).should_not be_valid
  end

end