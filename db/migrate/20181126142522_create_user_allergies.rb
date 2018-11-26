class CreateUserAllergies < ActiveRecord::Migration[5.2]
  def change
    create_table :user_allergies do |t|
      t.references :user, foreign_key: true
      t.references :allergy, foreign_key: true

      t.timestamps
    end
  end
end
