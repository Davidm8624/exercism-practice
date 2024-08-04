class Attendee
  def initialize(height)
    @height = height
  end

  def height
    puts "you are #{@height} tall"
  end

  def pass_id
    puts "your id is #{@id}"
  end

  def issue_pass!(pass_id)
    @id = pass_id
    puts "your id is now #{@id}"
  end

  def revoke_pass!
    @id = nil
    puts "your id has been revoked"
  end
end

#stuff below here is what i added to test stuff

person = Attendee.new(70)
person.height
person.pass_id
person.issue_pass!(69)
person.pass_id
person.revoke_pass!
person.pass_id
