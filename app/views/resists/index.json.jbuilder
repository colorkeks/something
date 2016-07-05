json.array!(@resist) do |resist|
  json.extract! resist, :id, :type, :percent
  json.url resist_url(resist, format: :json)
end
