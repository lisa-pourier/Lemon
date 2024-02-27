class CreateOffers < ActiveRecord::Migration[7.1]
  def change
    create_table :offers do |t|
      t.text :description
      t.float :price
      t.string :location
      t.string :company
      t.string :name
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
