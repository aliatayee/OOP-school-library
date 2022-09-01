require './person'
require './book'
require './rental'

describe Person do
  context 'test Person class' do
    person = Person.new(24, 'Mechael Obama')
    person2 = Person.new(24)
    book = Book.new('Becoming', 'Mechael Obama')
    rental = Rental.new('2022-05-13', person, book)
    it 'Book title should return Becoming' do
      expect(rental.book.title).to eq 'Becoming'
    end
    it 'Person name should return Mechael Obama' do
      expect(rental.person.name).to eq 'Mechael Obama'
    end
    it 'Person name should return Mechael Obama' do
      expect(person.name).to eq 'Mechael Obama'
    end
    it 'Person correct_name should return Mechael Obama' do
      expect(person.correct_name).to eq 'Mechael Obama'
    end
    it 'Person parent_permission should return true' do
      expect(person.parent_permission).to be true
    end
    it 'Person of_age should return true' do
      expect(person.send(:of_age?)).to be true
    end
    it 'Person can_use_services should return true' do
      expect(person.can_use_services?).to be true
    end
    it 'Person name should return Mechael Obama' do
      expect(person2.name).to eq 'Unknown'
    end
  end
end
