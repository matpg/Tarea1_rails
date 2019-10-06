json.extract! course, :id, :name, :nrc, :created_at, :updated_at
json.url course_url(course, format: :json)
