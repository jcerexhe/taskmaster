class Task < ApplicationRecord
  has_many :members, through: :member_tasks
  has_many :member_tasks
end
