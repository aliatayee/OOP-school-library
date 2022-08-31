require './person'

describe Person do
  context 'test Person class' do
    person = Person.new(24, 'Mechael Obama')
    it 'Person age should return 24' do
      expect(person.age).to eq 24
    end
    it 'Person name should return Mechael Obama' do
      expect(person.name).to eq 'Mechael Obama'
    end
  end
end
