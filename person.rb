require './nameable'
require './rental'
# Class person with informations
class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age, :rentals, :parent_permission

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end

  def can_use_services?
    return true if of_age? || parent_permission

    false
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
