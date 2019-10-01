class CreateUploadResults < ActiveRecord::Migration[5.0]
  def change
    create_table :upload_results do |t|
      t.integer :uploadId
      t.string :source
      t.integer :resourceId
      t.boolean :isValid

      t.timestamps
    end
  end
end
