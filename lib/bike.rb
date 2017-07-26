class Bike

  # I dont like the broken? method. I prefare attr_reader
  # attr_reader :broken
  #
  # def initialize
  #   @broken = broken
  # end

  def working?
    true
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end
