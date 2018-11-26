class CreateAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :allergies do |t|
      t.string :name
      t.text :allergy_information

      t.timestamps
    end
  end
end
