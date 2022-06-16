class AddItemTypeToShowrooms < ActiveRecord::Migration[6.1]
  def change
    add_column :showrooms, :type_showroom, :integer
  end
end
