json.array!(@armor_templates) do |armor_template|
  json.extract! armor_template, :id, :type, :percent
  json.url armor_template_url(armor_template, format: :json)
end
