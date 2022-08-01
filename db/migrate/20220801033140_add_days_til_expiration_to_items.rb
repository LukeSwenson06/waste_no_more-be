class AddDaysTilExpirationToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :days_til_expiration, :integer
  end
end
