class Backing < ApplicationRecord
  validates :user_id, :project_id, :pledge_amount, presence: true
  
  belongs_to :user,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  belongs_to :project,
    primary_key: :id,
    foreign_key: :project_id,
    class_name: :Project
end
