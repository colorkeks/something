json.array!(@character_templates) do |character_template|
  json.extract! character_template, :id, :name, :description, :hp, :strength, :intellect, :agility
  json.url character_template_url(character_template, format: :json)
end
