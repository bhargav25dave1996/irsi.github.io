class Governor < ActiveRecord::Base
	belongs_to :member, class_name: "MembershipRequest", :foreign_key => "membership_request_id"
end
