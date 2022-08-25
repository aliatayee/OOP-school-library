require './nameable'
class TrimmerDecorator < Nameable
  def correct_name
    super()
    @nameable.correct_name.slice(0, 10)
  end
end
