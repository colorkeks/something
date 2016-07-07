json.array!(@resists) do |resist|
  json.extract! resist, :id, :physical, :fire, :water, :earth, :holy, :necrotic, :nature, :character_id, :resist_template_id
  json.url resist_url(resist, format: :json)
end
