json.array!(@courses) do |course|
  json.extract! course, :id, :name, :short_desc, :duration, :language, :category_id
  json.url course_url(course, format: :json)
end
