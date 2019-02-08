require_relative '../config/db.rb'

class Cat
  attr_accessor :name, :age, :breed
  attr_reader :id

  def initialize(name, age, breed, id = nil)
    @name = name
    @age = age
    @breed = breed
    @id = id
  end

  def save
    sql = <<-SQL
      INSERT INTO cats (name, age, breed)
      VALUES (?, ?, ?)
    SQL

    DB[:conn].execute(sql, name, age, breed)
  end

  def self.create(name:, age:, breed:)
    cat = Cat.new(name, age, breed)
    cat.save
  end

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS cats (
      id INTEGER PRIMARY KEY,
      name TEXT,
      age INTEGER,
      breed TEXT
    )
    SQL

    DB[:conn].execute(sql)
  end

  def self.drop_table
    sql = <<-SQL
      DROP TABLE IF EXISTS cats
    SQL

    DB[:conn].execute(sql)
  end
end
