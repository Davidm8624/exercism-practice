require_relative 'attendee'

person = Attendee.new(70)
person.height
person.pass_id
person.issue_pass!(69)
person.pass_id
person.revoke_pass!
person.pass_id
