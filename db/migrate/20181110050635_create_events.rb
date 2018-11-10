class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.text :description
      t.string :address
      t.datetime :start_date
      t.datetime :end_date
      t.string :header_image
      t.string :organizer_name
      t.text :organizer_description
      t.decimal :admission_price
      t.integer :max_tickets

      t.timestamps
    end
  end
end
