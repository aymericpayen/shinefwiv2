class CreateShowrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :showrooms do |t|
      t.string :name
      t.text :description
      t.text :comment
      t.float :starting_from

      t.timestamps
    end
  end
end
