json.extract! upload, :id, :attachmentFileName, :attachmentFileSize, :contactId, :processedAt, :status, :organizationId, :uploaderContactId, :type, :attachmentContentType, :attachmentUpdatedAt, :totalRecords, :autoProcess, :created_at, :updated_at
json.url upload_url(upload, format: :json)
