class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :aurthor_last_name
      t.string :aurthor_first_name
      t.string :title

      t.timestamps
    end
  end
end
