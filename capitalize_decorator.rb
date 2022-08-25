require './base_decorator'
class CapitalizeDecorator < BaseDecorator
  def correct_name
    # Capitalize the first letter of the given name.
    @nameable.correct_name.capitalize
  end
end
