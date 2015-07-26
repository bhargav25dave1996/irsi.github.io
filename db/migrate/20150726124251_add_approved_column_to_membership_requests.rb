class AddApprovedColumnToMembershipRequests < ActiveRecord::Migration
  def up
  	add_column :membership_requests, :approved, :boolean, default: false
  end

  def down
  	remove_column :membership_requests, :approved
  end
end
