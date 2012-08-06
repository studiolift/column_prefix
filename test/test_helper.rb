require 'column_prefix'
require 'sqlite3'

# Configure test DB
db = SQLite3::Database.new 'test.db'
db.execute <<SQL
  CREATE TABLE IF NOT EXISTS entries (
   entry_id INTEGER PRIMARY KEY,
   entry_title VARCHAR(255),
   entry_text VARCHAR(255),
   entry_author VARCHAR(255)
  );
SQL

# Example model
class Entry < ActiveRecord::Base
  establish_connection(
    :adapter => "sqlite3",
    :database  => "test.db"
  )

  column_prefix "entry_"

  def author
    "None of your business"
  end
end

# Sample data
Entry.create({:title => "The first entry", :text => "Lorem ipsum dolor sit amet", :author => "Mike Robinson"})
