require 'spec_helper'

describe "pages/index.html.haml" do
  before(:each) do
    assign(:pages, [
      stub_model(Page,
        :name => "Name",
        :slug => "Slug",
        :sort_order => 1
      ),
      stub_model(Page,
        :name => "Name",
        :slug => "Slug",
        :sort_order => 1
      )
    ])
  end

  it "renders a list of pages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Slug".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
