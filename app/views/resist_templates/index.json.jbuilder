json.array!(@resist_templates) do |resist_template|
  json.extract! resist_template, :id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature, :item_template_id, :character_template_id, :monster_id
  json.url resist_template_url(resist_template, format: :json)
end
