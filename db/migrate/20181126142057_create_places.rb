class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :country
      t.string :language

      t.timestamps
    end
  end
end
