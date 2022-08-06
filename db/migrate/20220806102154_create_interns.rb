class CreateInterns < ActiveRecord::Migration[7.0]
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :last_name
      # Associate intern to doctor
      t.references :doctor, foreign_key: true
      t.timestamps
    end
  end
end
