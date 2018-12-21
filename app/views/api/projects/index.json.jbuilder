@projects.each do |project|
    json.set! project.id do
      json.partial! 'project', project: project
      json.image_url url_for(project.image)
      json.user project.user
    end
  end

