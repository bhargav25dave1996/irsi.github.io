ActiveAdmin.register MembershipRequest do
  permit_params :first_name, :middle_name, :last_name,
        :address, :city, :state, :country,
        :zipcode, :home_phone, :email, :business_phone,
        :business_email, :occupation, :institution,
        :created_at, :updated_at, :approved, :role_id

  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :institution
    column :created_at
    column :approved
    actions
  end

  filter :first_name
  filter :last_name
  filter :institution
  filter :country
  filter :occupation

  form do |f|
    f.inputs "Admin Details" do
    	f.input :first_name
    	f.input :middle_name
    	f.input :last_name
    	f.input :address
    	f.input :city
    	f.input :state
    	f.input :zipcode
    	f.input :home_phone
    	f.input :email
    	f.input :business_phone
    	f.input :business_email
    	f.input :occupation
    	f.input :institution
      f.input :role
      f.input :approved
    end
    f.actions
  end

end
