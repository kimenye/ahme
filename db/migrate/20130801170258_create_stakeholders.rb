class CreateStakeholders < ActiveRecord::Migration
  def change
    create_table :stakeholders do |t|
      t.string :first_name
      t.string :last_name
      t.string :country
      t.string :organisation
      t.string :tel
      t.string :email
      t.string :physical_address
      t.string :description

      t.timestamps
    end
  end
end
