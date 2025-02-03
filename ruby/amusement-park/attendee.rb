class Attendee
  def initialize(height)
    @height = height
  end

  def height
    return @height #return can be omitted
  end

  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = false
  end
end
