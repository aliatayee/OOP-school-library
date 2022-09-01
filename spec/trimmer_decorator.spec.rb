require './trimmer_decorator'
require './person'

describe TrimmerDecorator do
  context 'test TrimmerDecorator class' do
    person = Person.new(24, 'Mechael Obama')
    trimmer = TrimmerDecorator.new(person)
    it 'TrimmerDecorator  should slice  Mechael Obama to ten' do
      expect(trimmer.correct_name.length).to be <= 10
    end
  end
end
