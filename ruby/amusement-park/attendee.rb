class Attendee
  def initialize(height)
    @height = height
  end

  def height
    puts "you are #{@height} tall"
    return @height #might aswell be explicit
  end

  def pass_id
    puts "your id is #{@id}"
    return @id
  end

  def issue_pass!(pass_id)
    puts "your id is now #{@id}"
    @id = pass_id
  end

  def revoke_pass!
    puts "your id has been revoked"
    @id = nil
  end
end

#tests
if __FILE__ == $PROGRAM_NAME
  person = Attendee.new(70)
  person.height
  person.pass_id
  person.issue_pass!(69)
  person.pass_id
  person.revoke_pass!
  person.pass_id
end
