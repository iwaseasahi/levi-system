require 'rails_helper'
require 'faker'

RSpec.describe Book, type: :model do
  describe 'validates uniqueness' do
    context '重複している場合' do
      let!(:book_name) { create(:book_name) }
      let!(:book) { create(:book, version: 1, book_name: book_name, chapter: 1, verse: 1)}

      it '御言葉の箇所を保存できないこと' do
        book_another = Book.new(version: 1, book_name: book_name, chapter: 1, verse: 1)

        expect(book_another.valid?).to eq false
        expect(book_another.errors.messages[:version]).to include '御言葉の箇所は訳によって一意である必要があります'
      end
    end

    context '重複していな場合' do
      let!(:book_name) { create(:book_name) }
      let!(:book) { create(:book, version: 1, book_name: book_name, chapter: 1, verse: 1)}

      it '御言葉の箇所を保存できること' do
        book_another = build(:book, version: 1, book_name: book_name, chapter: 1, verse: 2)

        expect(book_another.valid?).to eq true
      end
    end
  end
end
