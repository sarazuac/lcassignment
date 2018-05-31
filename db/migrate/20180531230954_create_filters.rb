class CreateFilters < ActiveRecord::Migration[5.1]
  def change
    create_table :filters do |t|
      t.string :input
      t.string :column
      t.string :order

      t.timestamps
    end
  end
end
