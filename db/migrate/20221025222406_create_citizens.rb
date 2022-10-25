class CreateCitizens < ActiveRecord::Migration[7.0]
  def change
    create_table :citizens do |t|
      t.string :first_name
      t.string :last_name
      t.string :cpf
      t.string :cns
      t.string :email
      t.string :birthday
      t.string :phone
      t.string :photo
      t.string :status

      t.timestamps
    end
  end
end
