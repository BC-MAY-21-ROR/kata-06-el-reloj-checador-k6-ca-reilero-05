json.extract! employee, :id, :name, :position, :email, :secret_number, :status, :presence, :store_id, :created_at, :updated_at
json.url employee_url(employee, format: :json)
