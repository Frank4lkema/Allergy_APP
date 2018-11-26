class AddCollumsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :emerency_contact_name, :string
    add_column :users, :emerency_contact_number, :string
  end
end
