class CreateWorkers < ActiveRecord::Migration[5.0]
  def change
    create_table :workers do |t|
      t.string :name
      t.string :position
      t.string :office
      t.integer :age
      t.string :gender
      t.date :startDate
      t.decimal :price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
