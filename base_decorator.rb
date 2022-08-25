require './nameable'
class BaseDecorator < Nameable
  attr_accessor :nameable

  def correct_name
    super()
    @nameable.correct_name
  end
end
