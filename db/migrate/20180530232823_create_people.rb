class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :country
      t.string :mobile
      t.string :landline
      t.string :address
      t.timestamps
    end
  end
end
