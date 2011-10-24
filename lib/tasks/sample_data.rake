namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    admin = User.create!( :name => "Example User",
                          :email => "example@mailnesia.com",
                          :password => "foobar",
                          :password_confirmation => "foobar",
                          :role => "mentor")

    admin.toggle!(:admin)

    dextersmart = User.create!( :name => "Dextersmart Harry",
                                :email => "dextersmart@gmail.com",
                                :password => "independence",
                                :password_confirmation => "independence",
                                :role => "mentor")

    dextersmart.toggle!(:admin)

    49.times do |n|
      name  = Faker::Name.name
      email = "mentor-#{n+1}@mailnesia.com"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password,
                   :role => "mentor")
    end

    50.times do |n|
      name  = Faker::Name.name
      email = "apprentice-#{n+1}@mailnesia.com"
      password  = "password"
      User.create!(:name => name,
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
    end

	  50.times do
	    User.all(:limit => 6).each do |user|
	      user.microposts.create!(:content => Faker::Lorem.sentence(5))
	    end
	  end
  end
end

