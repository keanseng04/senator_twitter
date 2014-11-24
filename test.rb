require_relative 'app/models/congress_member'

p CongressMember.where("state = 'CA'")

p CongressMember.select("party").where("state = 'CA'")

CongressMember.select("firstname", "lastname", "state").where("state = 'TX' and title = 'Sen'")

CongressMember.select("firstname", "lastname").where("party = 'D' and title = 'Sen'")

CongressMember.select("firstname", "lastname").where("party = 'D' and title = 'Rep'")

CongressMember.select("firstname", "lastname", "phone", "fax", "website").where("title = 'Rep'")

p CongressMember.select("in_office = '0'").where("title = 'Rep'")

# Write some ActiveRecord queries
# ===============================

# 1. Given any state, first print out the senators for that state (sorted by last name), then print out the representatives (also sorted by last name). Include the party affiliation next to the name.

sens = CongressMember.select(:firstname, :lastname, :party).where("state = 'CA' and title = 'Sen'").order(:lastname).to_a

reps = CongressMember.select(:firstname, :lastname, :party).where("state = 'CA' and title = 'Rep'").order(:lastname).to_a

p sens
puts "Senators:"
sens.each do |s|
  puts "#{s[:firstname]} #{s[:lastname]} (#{s[:party]})"
end

puts ""
puts "Representatives:"
reps.each do |s|
  puts "#{s[:firstname]} #{s[:lastname]} (#{s[:party]})"
end

# 2. Given a gender, print out what number and percentage of the senators are of that gender as well as what number and percentage of the representatives, being sure to include only those congresspeople who are actively in office.

num_total_sen = CongressMember.where(title: "Sen", in_office: "1").count

print "Male Senators: "
print num_male_sen = CongressMember.where(title: "Sen", gender: "M", in_office: "1").count
print " "
puts "(#{((num_male_sen/(num_total_sen.to_f)) * 100).round(0)}%)"

num_total_rep = CongressMember.where(title: "Rep", in_office: "1").count

print "Male Representatives: "
print num_male_rep = CongressMember.where(title: "Rep", gender: "M", in_office: "1").count
print " "
puts "(#{((num_male_rep/(num_total_rep.to_f)) * 100).round(0)}%)"

# 3. Print out the list of states along with how many active senators and representatives are in each, in descending order (i.e., print out states with the most congresspeople first).

sencount = CongressMember.select(:state).where(title: "Sen", in_office: "1").group(:state).count

repcount = CongressMember.select(:state).where(title: "Rep", in_office: "1").group(:state).count

sencount.each do |key, value|
  puts "#{key}: #{value} Senators, #{repcount[key]} Representative(s)"
end

# 4. For Senators and Representatives, count the total number of each (regardless of whether or not they are actively in office).

puts "Senators: #{CongressMember.where(title: "Sen").count}"

puts "Representatives: #{repcount = CongressMember.where(title: "Rep").count}"

# 5. Now use ActiveRecord to delete from your database any congresspeople who are not actively in office, then re-run your count to make sure that those rows were deleted.

CongressMember.destroy_all(in_office: 0)
puts "Senators: #{CongressMember.where(title: "Sen").count}"

puts "Representatives: #{repcount = CongressMember.where(title: "Rep").count}"