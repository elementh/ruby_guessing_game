class Secret
  @@number

  def initialize(min, max)
    @@number = rand(min..max)
  end

  def matches(num)
    return @@number == num
  end
end