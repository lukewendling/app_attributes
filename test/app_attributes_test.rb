require 'test_helper'

class AppAttributesTest < Test::Unit::TestCase
  
  context "when extending class attributes" do
    setup do
      AppAttribute.class_eval do
        include AppAttributes
        ext_attribute :test_attr
      end
    end
    
    should "create dynamic getters and setters" do

    end
  end
end
