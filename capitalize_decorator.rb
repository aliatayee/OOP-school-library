require './nameable'
class CapitalizeDecorator < Nameable
  def correct_name
    super()
    @nameable.correct_name.capitalize
  end
end
