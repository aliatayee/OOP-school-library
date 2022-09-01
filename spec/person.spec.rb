require './person'
require './book'
require './rental'

describe Person do
  context 'test Person class' do
    person = Person.new(24, 'Mechael Obama')
    person2 = Person.new(24)
    person3 = Person.new(13, 'Ahmad', parent_permission: false)
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
    it 'Person can_use_services should return true since default parameter is true' do
      expect(person.can_use_services?).to be true
    end
    it 'Person can_use_services should return false since the age is less than 18' do
      expect(person3.can_use_services?).to be false
    end
    it 'The constructor method set a default value for the optional name parameter if it is not provided' do
      expect(person2.name).to eq 'Unknown'
    end
  end
end
