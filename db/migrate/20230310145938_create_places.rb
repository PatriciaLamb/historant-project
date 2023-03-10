class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :category
      t.string :name
      t.string :address
      t.string :cuisine
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
