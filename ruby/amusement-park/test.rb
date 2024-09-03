require_relative 'attendee'

person = Attendee.new(70)
puts "You are #{person.height} tall."
puts "Your pass ID is: #{person.pass_id}."
puts "We will issue you pass #{person.issue_pass!(69)}."
puts "Your new pass ID is: #{person.pass_id}."
puts "We have to revoke your pass: #{person.revoke_pass!}."
puts "Your new pass id, having been revoked is: #{person.pass_id}."
