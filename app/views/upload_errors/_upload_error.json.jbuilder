json.extract! upload_error, :id, :uploadResultId, :message, :created_at, :updated_at
json.url upload_error_url(upload_error, format: :json)
