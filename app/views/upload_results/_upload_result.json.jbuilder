json.extract! upload_result, :id, :uploadId, :source, :resourceId, :isValid, :created_at, :updated_at
json.url upload_result_url(upload_result, format: :json)
