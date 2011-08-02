require 'spec_helper'

describe "content_areas/show.html.haml" do
  before(:each) do
    @content_area = assign(:content_area, stub_model(ContentArea,
      :name => "Name",
      :content => "MyText",
      :sort_order => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
