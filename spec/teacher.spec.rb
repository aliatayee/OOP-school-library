require './teacher'

describe Teacher do
  context 'test Teacher class' do
    teacher = Teacher.new(nil, 25, 'Ali ali')
    it 'Teacher age should return 25' do
      expect(teacher.age).to eq 25
    end
    it 'Teacher name should return Ali ali' do
      expect(teacher.name).to eq 'Ali ali'
    end
  end
end
