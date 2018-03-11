# app/views/blog_posts/_blog_post.json.jbuilder

json.extract! post, :id, :title, :date, :cover, :body, :images
json.url blog_post_url(post, format: :json)
