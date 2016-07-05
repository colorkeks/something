json.array!(@resist_templates) do |resist_template|
  json.extract! resist_template, :id, :type, :percent
  json.url resist_template_url(resist_template, format: :json)
end
