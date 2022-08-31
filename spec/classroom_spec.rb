require './classroom'
require './student'

describe ClassRoom do
  context 'Test classroom' do
    classroom = ClassRoom.new(label: 'Math')
    student = Student.new('Ali', 24)
    classroom.add_student(student)

    it 'should have the label Math' do
      expect(classroom.lable).to eq(label: 'Math')
    end

    it 'should have at least one student' do
      expect(classroom.students.length).to eq(1)
    end

    it 'should have a student' do
      studentObj = classroom.students.first
      expect(studentObj.name).to eq(student.name)
    end
  end
end
