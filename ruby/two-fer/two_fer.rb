=begin
Write your code for the 'Two Fer' exercise in this file. Make the tests in
`two_fer_test.rb` pass.
=end
class TwoFer
  def initialize(friend = "you")
    @friend = friend
  end

  def to_s
    "One for #{@friend}, one for me."
  end

  def self.two_fer(friend = "you")
    new(friend).to_s
  end
end
