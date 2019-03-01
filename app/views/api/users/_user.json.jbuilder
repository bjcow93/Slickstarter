json.extract! user, :id, :email, :name, :projects
json.projects user.projects.pluck(:id)
json.backed_projects user.backed_projects
json.backings user.backings
