namespace :db do
 desc "Fill database with sample data"
  task populate: :environment do
    make_users
  end
end

def make_users
    admin = User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "password",
                 password_confirmation: "password",
    			 admin: true)
    
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end

  def make_associations
    users = User.all
    user  = users.first
    event_users = events[1]
    users       = users [1]
    event_users.each { |gone| user.follow! (event) }
    users.each  { |going| user.follow! (user)}
  end
