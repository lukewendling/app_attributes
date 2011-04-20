require File.join(File.dirname(__FILE__), 'app_attributes', 'app_attribute')

module AppAttributes
  def self.included(base)
    base.class_eval do
      has_many :app_attributes, :as => :attributable, :dependent => :delete_all
    end
    base.extend(ClassMethods)
  end

  # Example:
  # include AppAttributes
  # ext_attribute :something_extra, 'none'
  # ext_attribute :something_else
  #
  module ClassMethods
    def ext_attribute(name, default_value=nil)
      define_method("#{name}") do
        if self.new_record?
          app_attr = app_attributes.detect{|oa| oa.name == "#{name}"}
        else
          app_attr = app_attributes.find(:first, :conditions => {:name => "#{name}"})
        end
        (app_attr && app_attr.value) || default_value
      end

      define_method("#{name}?") do
        ! (value=send(name)).blank? && value != 'false'
      end

      define_method("#{name}=") do |raw_value|
        new_value = raw_value == false ? 'false' : (raw_value.blank? ? default_value : raw_value)
        if self.new_record?
          return if new_value.blank? # fail silently if no default value and new value is blank
          app_attr = app_attributes.detect{|oa| oa.name == "#{name}"}
          app_attr ||= app_attributes.build(:name=>"#{name}")
          app_attr.value = new_value
        else
          app_attr = app_attributes.find_or_create_by_name("#{name}")
#            new_value = '-' if new_value.blank? # validation prevents blank value
          app_attr.update_attributes(:value => new_value)
        end
        return app_attr.value
      end
    end
  end
end
