class MembershipRequestsController < ApplicationController

	def create
		MembershipRequest.create(membership_params)
	end

	private
	def membership_params
		params.permit(:first_name, :middle_name, :last_name,
			:address, :city, :state, :country, :zipcode,
	  		:home_phone, :email, :business_phone, :business_email,
	  		:occupation, :institution, :approved)
	end

end
