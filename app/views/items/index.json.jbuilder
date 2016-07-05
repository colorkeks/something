json.array!(@items) do |item|
  json.extract! item, :id, :equipped, :item_template_id, :character_id
  json.url item_url(item, format: :json)
end
