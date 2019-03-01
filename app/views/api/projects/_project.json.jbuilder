json.extract! project, :id, :user_id, :title, :description, :funding_goal, :start_date, :end_date
json.image_url url_for(project.image)
json.categories project.categories
json.backings project.backings
json.user do
  json.partial! 'api/users/user', user: project.user
end