module SavingsAccount
  def self.interest_rate(balance)
    if (balance >= 0 && balance < 1000)
      return 0.5
    elsif(balance >= 1000 && balance < 5000)
      return 1.621
    elsif (balance >= 5000)
      return 2.475
    else
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
    balance + (balance * interest_rate(balance))/100
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    years = 0
    until (current_balance >= desired_balance) do
      current_balance = annual_balance_update(current_balance)
      years = years + 1
    end
    return years
  end
end
