class AddToOffers < ActiveRecord::Migration
  def up
    add_column :offers, :description, :text
    add_column :offers, :button, :string
  end

  def down
  end
end
