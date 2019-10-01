class CreateUploadErrors < ActiveRecord::Migration[5.0]
  def change
    create_table :upload_errors do |t|
      t.integer :uploadResultId
      t.string :message

      t.timestamps
    end
  end
end
