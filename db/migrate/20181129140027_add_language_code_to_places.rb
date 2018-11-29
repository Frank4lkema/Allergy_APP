class AddLanguageCodeToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :language_code, :string
  end
end
