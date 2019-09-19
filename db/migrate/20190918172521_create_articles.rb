class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :author_last_name
      t.string :author_first_name
      t.string :title

      t.timestamps
    end
  end
end
