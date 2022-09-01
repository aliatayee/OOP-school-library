require './student'

describe Student do
  context 'test Student class' do
    student = Student.new(nil, 25, 'Mechael Obama', parent_permission: false)
    it 'Student age should return 25' do
      expect(student.age).to eq 25
    end
    it 'Student name should return Mechael Obama' do
      expect(student.name).to eq 'Mechael Obama'
    end
    it 'Student parent_permission should return false' do
      expect(student.parent_permission).to be false
    end
  end
end
