require './capitalize_decorator'
require './person'

describe CapitalizeDecorator do
  context 'Test CapitalizeDecorator class' do
    it 'should return Ali' do
      person = Person.new(24,'ali')
      capitalizer = CapitalizeDecorator.new(person)
      expect(capitalizer.correct_name).to eq 'Ali'
    end
  end
end