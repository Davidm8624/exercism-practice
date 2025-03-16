class Luhn
  def self.valid?(value)
    clean_value = value.gsub(' ', '')

    # Ensure input contains only digits and is not a single digit
    return false unless clean_value.match?(/\A\d+\z/) && clean_value.length > 1

    digits = clean_value.chars.map(&:to_i)

    even_values = []
    odd_values = []

    digits.reverse.each_with_index do |val, index|
      if index.even?
        even_values << val
      else
        odd_values << val
      end
    end

    result = { even: even_values, odd: odd_values }
    odd_index_items = result[:odd]
    doubled_odd_items = odd_index_items.map { |item| item * 2 }
    result[:odd] = doubled_odd_items

    result.keys.each do |key|
      result[key] = result[key].map { |item| item > 9 ? item - 9 : item }
    end

    sum = result.values.flatten.reduce(:+)

    # Only check that sum is a multiple of 10
    sum % 10 == 0
  end
end
