json.extract! attendance, :id, :check_datetime, :action, :employee_id, :created_at, :updated_at
json.url attendance_url(attendance, format: :json)