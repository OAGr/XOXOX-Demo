class AddFileToOffer < ActiveRecord::Migration
  def change
        add_column :offers, :attachment, :string
  end
end
