class AddNullFalseToInternsFirstNameAndLastName < ActiveRecord::Migration[7.0]
  def change
    change_column :interns, :first_name, :string, null: false
    change_column :interns, :last_name, :string, null: false
  end
end
