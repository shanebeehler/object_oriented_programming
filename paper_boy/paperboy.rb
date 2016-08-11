class Paper_boy

  attr_reader :earnings

  def initialize(name, experience, side, earnings)
    @name = name
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def quota
    @quota = (@experience / 2) + 50
  end

  def deliver(start_address, end_address)

    papes_delivered = end_address - start_address

    start_pay = papes_delivered * 0.25

    if papes_delivered < @quota
      start_pay -= 2
      return start_pay
    elsif papes_delivered == quota
      return start_pay
    else
      puts "over_pay"

      over_pay = (papes_delivered - quota) * 0.25 + start_pay
      return over_pay
    end
  end
end
