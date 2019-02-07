require 'bundler/setup'
Bundler.require

require 'active_record'
require 'sqlite3'
require 'pry'

DB = ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/pets_database.db'
)
