# app/views/blog_posts/_post.json.jbuilder

json.extract! post, :id, :title, :slug, :date, :cover, :description

json.url post_url(post, format: :json)
