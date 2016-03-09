json.array!(@grades) do |grade|
  json.extract! grade, :id, :grade, :assignment_description, :due_date, :student_id
  json.url grade_url(grade, format: :json)
end
