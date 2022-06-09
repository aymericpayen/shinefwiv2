class AddItemTypeToShowrooms < ActiveRecord::Migration[6.1]
  def change
    add_column :showrooms, :type, :integer
  end
end
