class Member < ApplicationRecord
  validates :name, presence: true

  has_many :tasks, through: :member_tasks
  has_many :member_tasks
end
