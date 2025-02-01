class CreateStudioMembers < ActiveRecord::Migration[7.1]
    def change
      create_table :studio_members do |t|
        t.integer :studio_id
        t.integer :member_id
  
        t.timestamps
      end
    end
  end