task :db_env do
  require_relative 'config/db.rb'
end

namespace :db do
  desc 'create the cats table'
  task :create => :db_env do
    Cat.create_table
  end

  desc 'drop the cats table'
  task :drop => :db_env do
    Cat.drop_table
  end

  desc 'seed the data'
  task :seed do
    require_relative 'db/seeds.rb'
  end
end
