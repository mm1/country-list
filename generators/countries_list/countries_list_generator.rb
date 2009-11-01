class CountriesListGenerator < Rails::Generator::Base
  def manifest
    #check if "migrate" folder exists
    #if not then create the folder
    migrations_directory_path = "#{RAILS_ROOT}/db/migrate"
    Dir.mkdir(migrations_directory_path) unless File.directory?(migrations_directory_path)
    
    #copy countries migration
    record do |m|
      m.file 'migrations/create_countries.rb', "db/migrate/#{Time.now.strftime("%Y%m%d%H%M%S")}_create_countries.rb"
    end
  end
end