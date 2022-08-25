require './base_decorator'
class TrimmerDecorator < BaseDecorator
  def correct_name
    # The name has a maximum of 10 characters. If it's longer it should trim the word.`
    @nameable.correct_name.slice(0, 10)
  end
end
