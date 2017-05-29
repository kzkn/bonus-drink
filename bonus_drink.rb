class BonusDrink
  BONUS_BY = 3

  def self.total_count_for(amount)
    raise ArgumentError("negative amount: #{amount}") if amount < 0

    bonus = amount / BONUS_BY
    return amount if bonus == 0

    remainings = amount % BONUS_BY
    extra = total_count_for(bonus + remainings)
    return (amount - remainings) + extra
  end
end
