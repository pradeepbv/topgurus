namespace :db do

  desc "Seed the current environment's database." 
  task(:seed_data => :environment) do

    require 'active_record/fixtures'

    # truncate all tables
    Country.destroy_all
    State.destroy_all
    City.destroy_all
    Locality.destroy_all
    Location.destroy_all
    Category.destroy_all
    Subcategory.destroy_all
    Course.destroy_all
    Institution.destroy_all

    # add data from fixtures
    Dir.glob(Rails.root.join("db/fixtures/*.csv")).each do |file|
      puts "importing " << File.basename(file, '.csv')
      ActiveRecord::Fixtures.create_fixtures('db/fixtures', file)
      puts "Successfully imported " << File.basename(file, '.*')
    end

  end

end
