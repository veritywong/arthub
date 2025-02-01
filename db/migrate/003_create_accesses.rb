class CreateAccesses < ActiveRecord::Migration[7.1]
  def change
    create_table :accesses do |t|
      t.integer :site_id
      t.boolean :step_free
      t.string :lift_type

      t.timestamps
    end
  end
end
