json.array!(@attack_types) do |attack_type|
  json.extract! attack_type, :id, :name, :description, :attack, :attack_type
  json.url attack_type_url(attack_type, format: :json)
end
