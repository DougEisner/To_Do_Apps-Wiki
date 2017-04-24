json.extract! todo_app, :id, :name, :url, :rating, :picture, :created_at, :updated_at
json.url todo_app_url(todo_app, format: :json)
