json.array!(@attack_type_templates) do |attack_type_template|
  json.extract! attack_type_template, :id, :name, :description, :attack, :attack_type
  json.url attack_type_template_url(attack_type_template, format: :json)
end
