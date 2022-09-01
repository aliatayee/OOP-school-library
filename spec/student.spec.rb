require './student'

describe Student do
  context 'test Student class' do
    student = Student.new('Class1', 25, 'Mechael Obama', parent_permission: false)
    it 'Student age should return 25' do
      expect(student.age).to eq 25
    end
    it 'Student name should return Mechael Obama' do
      expect(student.name).to eq 'Mechael Obama'
    end
    it 'Student parent_permission should return false' do
      expect(student.parent_permission).to be false
    end
    it 'Student classroom should return Class1' do
      expect(student.classroom).to eq 'Class1'
    end
    it 'Person play_hooky should return nil' do
      expect(student.play_hooky).to eq "¯\(ツ)/¯"
    end 
  end
end
