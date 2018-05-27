# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def seed_asset_image(image)
  File.open(Rails.root + "app/assets/images/#{image}")
end

def load_yaml(file)
  YAML.load_file(Rails.root.join("db/yaml_data/#{file}.yml"))
end

def create_date(arr)
  Date.new(arr[0], arr[1], arr[2])
end

def seed_aws_image(file)
  if Rails.env.production?
    "https://s3.amazonaws.com/portfolio-of-eric-stephenson/#{file}"
  else
    File.open(Rails.root + "app/assets/images/#{file}")
  end
end

posts = load_yaml('posts')

projects = load_yaml('projects')

Post.delete_all

puts 'Loading posts ============================'

posts.each do |post|
  puts "Loading post: #{post['title']}"

  new_post = Post.create!(
    title: post['title'],
    slug: post['slug'],
    date: create_date(post['date']),
    cover: seed_asset_image(post['cover']),
    description: post['description']
  )

  post['sections'].each do |section|
    new_post.sections.create!(
      header: section['header'],
      images: section['images'],
      body: section['body']
    )
  end
end

Project.delete_all

puts 'Loading projects ========================='

projects.each do |project|
  puts "Loading project: #{project['title']}"

  Project.create!(
    meta_title: project['meta_title'],
    meta_description: project['meta_description'],
    title: project['title'],
    slug: project['slug'],
    cover: seed_asset_image(project['cover']),
    images: project['images'],
    site_link: project['site_link'],
    repo_link: project['repo_link'],
    description: project['description'],
    summary: project['summary'],
    highlights: project['highlights'],
    tech_stack: project['tech_stack']
  )
end
