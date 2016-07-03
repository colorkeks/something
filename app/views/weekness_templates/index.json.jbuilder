json.array!(@weekness_templates) do |weekness_template|
  json.extract! weekness_template, :id, :type, :percent
  json.url weekness_template_url(weekness_template, format: :json)
end
