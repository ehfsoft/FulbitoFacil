class CreateAdvertisings < ActiveRecord::Migration
  def change
    create_table :advertisings do |t|
      t.string :title
      t.text :content
      t.date :startdate
      t.date :enddate
      t.integer :rate
      t.string :location
      t.integer :numberclicks

      t.timestamps
    end
  end
end
