require './rental'
require './book'
require './person'

describe Rental do
  context 'test rental class' do
    book = Book.new('Becoming', 'Mechael Obama')
    person = Person.new(24,'Victor')

    rental = Rental.new('2022-05-13',person, book)
    it 'Book title should return Becoming' do
      expect(rental.book.title).to eq 'Becoming'
    end
    it 'Person name should return Victor' do
      expect(rental.person.name).to eq 'Victor'
    end
  end
end
