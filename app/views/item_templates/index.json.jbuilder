json.array!(@item_templates) do |item_template|
  json.extract! item_template, :id, :name, :description, :item_type, :equiped, :strength, :intellect, :agility, :character_template_id
  json.url item_template_url(item_template, format: :json)
end
