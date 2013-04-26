class CreateBoxes < ActiveRecord::Migration
  def change
    create_table :boxes do |t|
      t.references :profile
      t.text :text

      t.timestamps
    end
    add_index :boxes, :profile_id
  end
end
