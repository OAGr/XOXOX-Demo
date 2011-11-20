class ChangeUserIdToInteger < ActiveRecord::Migration
  def up
    rename_column :subscriptions, :offer_id, :string
    add_column :subscriptions, :offer_id, :integer
  end

  def down
  end
end
