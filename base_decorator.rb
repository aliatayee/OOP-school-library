require './nameable'
class BaseDecorator < Nameable
  def correct_name
    super()
    @nameable.correct_name
  end
end
