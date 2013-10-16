class AddIndexToProfiles < ActiveRecord::Migration
  def change

  	add_index :profiles, :creator

  end
end
