json.extract! user, :id, :email, :name, :projects
json.projects user.projects.pluck(:id)
