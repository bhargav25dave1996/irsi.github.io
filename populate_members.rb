require 'rubygems'
require 'spreadsheet'

Spreadsheet.client_encoding = 'UTF-8'

book = Spreadsheet.open '/home/shubham/irsi_members.xls'
sheet = book.worksheet 1

sheet.each_with_index do |row, i|
	data = row[1]
	if not data.nil?
		Role.create(:name => data)
	end
end

sheet = book.worksheet 0

sheet.each_with_index do |row, i|
	name = row[0]
	mr = MembershipRequest.new
	if not name.nil?
		names = name.split(" ")
		mr.first_name = names.first
		mr.last_name = names.last
	end

	insti = row[1]
	unless insti.nil?
		mr.institution = insti
	end

	country = row[2]
	unless country.nil?
		mr.country = country
	end

	role_id = row[3]
	unless role_id.nil?
		role = Role.where(id: role_id).first
		mr.role = role
	end

	url = row[5]
	unless url.nil?
		mr.profile_url = url
	end

	mr.approved = true
	mr.save

	if role_id==5
		Governor.create(membership_request_id: mr.id, designation: row[4])
	end

end