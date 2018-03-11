# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_image(file_name)
  if Rails.env.production?
    "https://s3.amazonaws.com/portfolio-of-eric-stephenson/#{file_name}"
  else
    File.open(File.join(Rails.root + "app/assets/images/#{file_name}"))
  end
end
