class MembersController < ApplicationController

	def create
		MembershipRequest.create(membership_params)
		redirect_to '/'
	end

	def show
		@members = MembershipRequest.where(approved: true)
	end

	private
	def membership_params
		params.permit(:first_name, :middle_name, :last_name,
			:address, :city, :state, :country, :zipcode,
	  		:home_phone, :email, :business_phone, :business_email,
	  		:occupation, :institution, :approved)
	end

end
