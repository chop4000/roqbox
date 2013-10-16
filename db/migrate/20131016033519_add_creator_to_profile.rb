class AddCreatorToProfile < ActiveRecord::Migration
  def change

  	add_column :profiles, :creator, :integer

  end
end
