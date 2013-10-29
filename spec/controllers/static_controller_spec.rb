require 'spec_helper'

describe StaticController do

  it 'should have an about page' do
    get :about
    response.should be_success
  end

  it 'should have a home page' do
    get :home
    response.should be_success
  end

  it 'should have a legal page' do
    get :legal
    response.should be_success
  end

  it 'should have a support page' do
    get :support
    response.should be_success
  end

end