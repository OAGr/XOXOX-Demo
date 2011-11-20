class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :name
      t.string :video_url
      t.string :bullet1
      t.string :bullet2
      t.string :bullet3

      t.timestamps
    end
  end
end
