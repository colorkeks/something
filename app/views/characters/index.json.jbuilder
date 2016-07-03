json.array!(@characters) do |character|
  json.extract! character, :id, :name, :description, :hp, :strength, :intellect, :agility
  json.url character_url(character, format: :json)
end
