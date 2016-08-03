json.extract! member_task, :id, :member, :task, :task_type, :created_at, :updated_at
json.url member_task_url(member_task, format: :json)