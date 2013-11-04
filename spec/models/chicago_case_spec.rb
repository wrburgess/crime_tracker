require 'spec_helper'

describe ChicagoCase do

  it 'has a valid factory' do
    FactoryGirl.create(:chicago_case).should be_valid
  end

  it 'is invalid without a case_number' do
    FactoryGirl.build(:chicago_case, case_number: nil).should_not be_valid
  end

end