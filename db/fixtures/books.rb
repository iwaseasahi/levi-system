require 'csv'

CSV.foreach('db/fixtures/csv/books.csv') do |row|
  next if Book.exists?(id: row[0])

  Book.create!(
    id: row[0],
    version: row[1],
    book_name_id: row[2],
    chapter: row[3],
    verse: row[4],
    word: row[5]
  )
end
