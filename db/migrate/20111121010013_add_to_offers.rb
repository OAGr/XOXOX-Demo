class AddToOffers < ActiveRecord::Migration
  def change
    add_column :offers, :description, :text
    add_column :offers, :button, :string
  end

end
