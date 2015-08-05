class CreateGovernors < ActiveRecord::Migration
  def up
    create_table :governors do |t|
    	t.integer :membership_request_id
    	t.string :designation
      t.timestamps
    end
  end

  def down
  	drop_table :governors
  end
end
