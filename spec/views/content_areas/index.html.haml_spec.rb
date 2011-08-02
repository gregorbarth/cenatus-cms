require 'spec_helper'

describe "content_areas/index.html.haml" do
  before(:each) do
    assign(:content_areas, [
      stub_model(ContentArea,
        :name => "Name",
        :content => "MyText",
        :sort_order => 1
      ),
      stub_model(ContentArea,
        :name => "Name",
        :content => "MyText",
        :sort_order => 1
      )
    ])
  end

  it "renders a list of content_areas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
