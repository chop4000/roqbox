class AddProfilesToUsers < ActiveRecord::Migration
  def self.up

  	create_table 'profiles_users', :id=> false do |t|
  		t.column :profile_id, :integer
  		t.column :user_id, :integer
  	end

  end
end
