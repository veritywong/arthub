class CreateStudios < ActiveRecord::Migration[7.1]
  def change
    create_table :studios do |t|
      t.integer :site_id
      t.string :name
      t.float :width
      t.float :length
      t.float :height
      t.boolean :window
      t.boolean :sink

      t.timestamps
    end
  end
end
