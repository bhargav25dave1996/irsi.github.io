class MembershipRequest < ActiveRecord::Base
	belongs_to :role
	scope :advisors, -> {where(role_id: Role.where(name: "Advisory Member"), approved: true)}
	scope :regular_members, -> {where(role_id: Role.where(name: "Regular Member"), approved: true)}
	scope :associates, -> {where(role_id: Role.where(name: "Associate Member"), approved: true)}

	def full_name
		first_name + " " + last_name
	end
end
