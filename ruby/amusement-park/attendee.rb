class Attendee
  def initialize(height)
    @height = height
  end

  def height
    return @height #might aswell be explicit
  end

  def pass_id
    return @id
  end

  def issue_pass!(pass_id)
    @id = pass_id
  end

  def revoke_pass!
    @id = nil
  end
end

# Examples
if __FILE__ == $PROGRAM_NAME
  person = Attendee.new(70)
  puts "You are #{person.height} tall."
  puts "Your pass ID is: #{person.pass_id}."
  puts "We will issue you pass #{person.issue_pass!(69)}."
  puts "Your new pass ID is: #{person.pass_id}."
  puts "We have to revoke your pass: #{person.revoke_pass!}."
  puts "Your new pass id, having been revoked is: #{person.pass_id}."
end
