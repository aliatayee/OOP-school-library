require './student'

describe Student do
  context 'test Student class' do
    student = Student.new(nil, 25, 'Mechael Obama')
    it 'Student age should return 25' do
      expect(student.age).to eq 25
    end
    it 'Student name should return Mechael Obama' do
      expect(student.name).to eq 'Mechael Obama'
    end
  end
end
