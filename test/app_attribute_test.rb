require 'test_helper'

class AppAttributeTest < Test::Unit::TestCase
  should validate_presence_of(:name)
  
  should "validate uniqueness of name in scope" do
    name = 'Boston'
    assert_difference "AppAttribute.count" do
      AppAttribute.create(:name => name, :attributable_id => 1, :attributable_type => 'Author')
    end
    app_attr = AppAttribute.new(:name => name, :attributable_id => 1, :attributable_type => 'Author')
    assert app_attr.errors.on(:name)
  end
end
