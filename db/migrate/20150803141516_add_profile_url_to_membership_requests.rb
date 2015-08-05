class AddProfileUrlToMembershipRequests < ActiveRecord::Migration
  def up
  	add_column :membership_requests, :profile_url, :string
  end

  def down
  	remove_column :membership_requests, :profile_url
  end
end
