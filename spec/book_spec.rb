require './book'

describe Book do
  context 'test book class' do
    book = Book.new('Becoming', 'Mechael Obama')
    it 'Book title should return Becoming' do
      expect(book.title).to eq 'Becoming'
    end
    it 'Book author should return Mechael Obama' do
      expect(book.author).to eq 'Mechael Obama'
    end
  end
end
