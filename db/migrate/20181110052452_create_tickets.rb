class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.string :unique
      t.decimal :purchased_price
      t.datetime :purchased_date
      t.integer :event_id
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
