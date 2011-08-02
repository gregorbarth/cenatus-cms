require 'spec_helper'

describe "content_areas/new.html.haml" do
  before(:each) do
    assign(:content_area, stub_model(ContentArea,
      :name => "MyString",
      :content => "MyText",
      :sort_order => 1
    ).as_new_record)
  end

  it "renders new content_area form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => content_areas_path, :method => "post" do
      assert_select "input#content_area_name", :name => "content_area[name]"
      assert_select "textarea#content_area_content", :name => "content_area[content]"
      assert_select "input#content_area_sort_order", :name => "content_area[sort_order]"
    end
  end
end
