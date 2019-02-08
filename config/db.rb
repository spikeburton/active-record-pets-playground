require 'sqlite3'
require_relative '../lib/cat.rb'

DB = {
  :conn => SQLite3::Database.new('db/pets_database.db')
}
