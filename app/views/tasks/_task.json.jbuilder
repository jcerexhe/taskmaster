json.extract! task, :id, :name, :location, :comment, :created_at, :updated_at
json.url task_url(task, format: :json)