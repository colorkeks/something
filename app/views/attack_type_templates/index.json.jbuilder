json.array!(@attack_type_templates) do |attack_type_template|
  json.extract! attack_type_template, :id, :name, :attack, :attack_type, :crit_chance, :crit_dmg, :character_template_id, :item_template_id, :monster_id
  json.url attack_type_template_url(attack_type_template, format: :json)
end
