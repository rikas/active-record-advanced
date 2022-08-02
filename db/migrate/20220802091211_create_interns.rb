class CreateInterns < ActiveRecord::Migration[7.0]
  def change
    create_table :interns do |t|
      t.string :first_name # we should have ", null: false" since we have a validation for
                           # presence in the model
      t.string :last_name
      # t.integer :doctor_id
      t.references :doctor, foreign_key: true
      t.timestamps
    end
  end
end
