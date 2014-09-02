json.array!(@course_details) do |course_detail|
  json.extract! course_detail, :id, :course_description, :syllabus, :recommended_background, :course_format, :course_id
  json.url course_detail_url(course_detail, format: :json)
end
