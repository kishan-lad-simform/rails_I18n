class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :contact, :string
    add_column :users, :email, :string
    add_column :users, :age, :integer
  end
end
