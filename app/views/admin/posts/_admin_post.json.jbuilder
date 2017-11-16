json.extract! admin_post, :id, :title, :image, :body, :views, :created_at, :updated_at
json.url admin_post_url(admin_post, format: :json)
