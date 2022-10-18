json.extract! comment, :id, :body, :articles_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
