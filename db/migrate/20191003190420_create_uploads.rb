class CreateUploads < ActiveRecord::Migration[5.0]
  def change
    create_table :uploads do |t|
      t.string :attachmentFileName
      t.integer :attachmentFileSize
      t.integer :contactId
      t.datetime :processedAt
      t.string :status
      t.integer :organizationId
      t.integer :uploaderContactId
      t.string :uploadType
      t.string :attachmentContentType
      t.datetime :attachmentUpdatedAt
      t.integer :totalRecords
      t.boolean :autoProcess

      t.timestamps
    end
  end
end
