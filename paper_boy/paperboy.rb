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
      @earnings += start_pay
      @experience += papes_delivered
      return start_pay
    elsif papes_delivered == quota
      @earnings += start_pay
      @experience += papes_delivered
      return start_pay
    else
      over_pay = (papes_delivered - quota) * 0.25 + start_pay
      @earnings += over_pay
      @experience += papes_delivered
      return over_pay
    end
  end

  def report
    puts "I'm #{@name}. I've delivered #{@experience} papers and made $#{@earnings}."
  end

end
