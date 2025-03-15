class Isogram
  def self.isogram?(string)
    return true if string.empty?

    hash = Hash.new(0)
    string.downcase.each_char do |char|
      next if char == ' ' || char == '-'

      hash[char] += 1
    end
    hash.any? { |_, count| count > 1 } ? false : true
  end
end
