class CreateTranslatedAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :translated_allergies do |t|
      t.references :allergy, foreign_key: true
      t.string :name
      t.string :language

      t.timestamps
    end
  end
end
