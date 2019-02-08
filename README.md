# A place to play with the pets database we created in SQL
Simply type `ruby tools/console.rb` from the root directory to drop into Pry and use ActiveRecord to play with the database. A `Cat` class has been created already, which you can use to play with the `cats` table in the `db/pets_database.db` database.

## Should you break it ...
Simply drop and recreate the `cats` table using the following steps:
1. `rake db:drop`
2. `rake db:create`
3. `rake db:seed`
