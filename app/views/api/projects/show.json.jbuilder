json.project do
  json.partial! 'project', project: @project
  # json.extract! @project, :id, :name, :attack, :defense, :moves, :poke_type, :item_ids
  # json.image_url asset_path(@pokemon.image_url)
end
