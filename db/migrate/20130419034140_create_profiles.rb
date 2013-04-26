class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :slug

      t.timestamps
    end
  end
end
