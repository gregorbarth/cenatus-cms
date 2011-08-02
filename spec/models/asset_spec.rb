require 'spec_helper'

describe Asset do
  it "can be instantiated" do
    Asset.new.should be_an_instance_of(Asset)
  end                                           
  
  it "has many assets via paperclip" do
    Asset.new.asset.should_not be_nil
  end
  
end
