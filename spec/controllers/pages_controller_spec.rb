require 'spec_helper'
describe PagesController do


  before :each do
    @page = mock_model(Page)
  end

  describe "GET 'index'" do

    before :each do
      Page.stub!(:find).and_return([@page])
    end


    it "should be successful" do
         get 'index'
         response.should be_success
       end
  end  
    
end    
