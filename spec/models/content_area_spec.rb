require 'spec_helper'

describe ContentArea do
  it "can be instantiated" do
    ContentArea.new.should be_an_instance_of(ContentArea)
  end    
end
