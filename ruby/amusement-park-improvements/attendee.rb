class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
    return false if @pass_id.nil?

    true
  end

  def fits_ride?(ride_minimum_height)
    return true if @height >= ride_minimum_height

    false
  end

  def allowed_to_ride?(ride_minimum_height)
    return true if has_pass? && fits_ride?(ride_minimum_height)

    false
  end
end
