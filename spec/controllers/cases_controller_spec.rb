require 'spec_helper'

describe CasesController do

  let(:case1) { FactoryGirl.create(:case) }
  let(:case2) { FactoryGirl.create(:case) }

  describe "#index" do
    it 'should have an index' do
      case1
      case2
      get :index
      response.should be_success
    end

    it "assigns the requested players to @cases" do
      case1
      case2
      cases = Case.all
      get :index
      expect(assigns(cases)).to eq @cases
    end
  end

  # describe "#show" do
  #   xit 'should have a show' do
  #     location1
  #     get :show, city: location1.city_slug, name: location1.name_slug  
  #     response.should be_success
  #   end

  #   xit "renders the show view" do
  #     location1
  #     get :show, city: location1.city_slug, name: location1.name_slug  
  #     response.should render_template :show
  #   end

  #   xit "assigns the requested location to @location" do
  #     location1
  #     get :show, city: location1.city_slug, name: location1.name_slug    
  #     expect(assigns(location1)).to eq @location
  #   end
  # end

end