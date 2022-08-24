require './nameable'
class TrimmerDecoder < Nameable
  def initialize(nameable = Nameable.new)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.slice(0, 10)
  end
end
