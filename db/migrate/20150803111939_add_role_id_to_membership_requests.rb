class AddRoleIdToMembershipRequests < ActiveRecord::Migration
  def up
  	add_column :membership_requests, :role_id, :integer
  end

  def down
  	remove_column :membership_requests, :role_id
  end

end
