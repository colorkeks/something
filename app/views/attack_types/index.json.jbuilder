json.array!(@attack_types) do |attack_type|
  json.extract! attack_type, :id, :attack, :crit_chance, :crit_dmg, :character_id, :item_id, :attack_type_template_id
  json.url attack_type_url(attack_type, format: :json)
end
