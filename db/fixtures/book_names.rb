require 'csv'

CSV.foreach('db/fixtures/csv/book_names.csv') do |row|
  next if BookName.exists?(id: row[0])

  BookName.create!(
    id: row[0],
    testament: row[1],
    japanese: row[2],
    english: row[3],
  )
end
