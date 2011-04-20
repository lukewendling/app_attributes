# polymorphic name-value pairs with serialized values
class AppAttribute < ActiveRecord::Base
#    name              :string
#    value             :text
#    attributable_id   :integer
#    attributable_type :string
#    timestamps
  
  serialize :value
  
  belongs_to :attributable, :polymorphic => true
  
  validates_uniqueness_of :name, :scope => [:attributable_id, :attributable_type]
  validates_presence_of :name
end
