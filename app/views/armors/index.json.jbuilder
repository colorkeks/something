json.array!(@armors) do |armor|
  json.extract! armor, :id, :type, :percent
  json.url armor_url(armor, format: :json)
end
