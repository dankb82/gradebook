json.array!(@students) do |student|
  json.extract! student, :id, :name, :email, :password_digest, :parent_id, :teacher_id
  json.url student_url(student, format: :json)
end
