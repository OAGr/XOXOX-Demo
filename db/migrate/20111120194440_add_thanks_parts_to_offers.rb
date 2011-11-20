class AddThanksPartsToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :thanks_video, :string
    add_column :offers, :thanks_audio, :string
    add_column :offers, :thanks_text, :text
    
  end
end
