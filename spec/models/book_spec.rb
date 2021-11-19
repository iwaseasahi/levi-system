require 'rails_helper'
require 'faker'

RSpec.describe Book, type: :model do
  describe 'validates' do
    context ' uniqueness の場合' do
      let!(:book_name) { create(:book_name) }
      let!(:book) { create(:book, version: 1, book_name: book_name, chapter: 1, verse: 1)}

      it '御言葉の箇所は訳で一意であること' do
        book_another = Book.new(version: 1, book_name: book_name, chapter: 1, verse: 1)
        book_another.valid?

        expect(book_another.errors.messages[:version]).to include '御言葉の箇所は訳によって一意である必要があります'
      end
    end
  end
end
