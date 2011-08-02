require 'spec_helper'
describe CategoriesController do


  before :each do
    @category = mock_model(Category)
  end

  describe "GET 'index'" do

    before :each do
      Category.stub!(:find).and_return([@category])
    end

#add this test back in if you actually want an index view in your project
    # it "should be successful" do
    #      get 'index'
    #      response.should be_success
    #    end
  end  
    
end    
