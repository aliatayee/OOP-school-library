require './nameable'
class CapitalizeDecoder < Nameable
  def initialize(nameable = Nameable.new)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.upcase
  end
end
