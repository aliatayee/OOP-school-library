require './teacher'

describe Teacher do
  context 'test Teacher class' do
    teacher = Teacher.new(nil, 25, 'Ali ali')
    teacher2 = Teacher.new('Maths', 25, 'Ali ali')
    it 'Teacher age should return 25' do
      expect(teacher.age).to eq 25
    end
    it 'Teacher name should return Ali ali' do
      expect(teacher.name).to eq 'Ali ali'
    end
    it 'Person can_use_services should return true' do
      expect(teacher.can_use_services?).to be true
    end
    it 'Person specialization should return true' do
      expect(teacher2.specialization).to eq 'Maths'
    end
  end
end
