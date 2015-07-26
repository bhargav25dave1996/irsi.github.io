class CreateMembershipRequests < ActiveRecord::Migration
  def up
    create_table :membership_requests do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.integer :zipcode
      t.string :home_phone
      t.string :email
      t.string :business_phone
      t.string :business_email
      t.string :occupation
      t.string :institution

      t.timestamps
    end
  end

  def down
    drop_table :membership_requests
  end
end
