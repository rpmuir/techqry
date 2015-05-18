class CreateTqs < ActiveRecord::Migration
  def change
    create_table :tqs do |t|
      t.string :tqid
      t.string :client
      t.date :date
      t.boolean :impact
      t.text :query

      t.timestamps null: false
    end
  end
end
