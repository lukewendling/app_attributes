class CreateAppAttributes < ActiveRecord::Migration
  def self.up
    create_table :app_attributes do |t|
      t.string :name
      t.text   :value
      t.integer :attributable_id
      t.string :attributable_type
      t.timestamps
    end

    add_index :app_attributes, [:attributable_type, :attributable_id]
  end

  def self.down
    drop_table :app_attributes
  end
end
