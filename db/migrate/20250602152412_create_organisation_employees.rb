class CreateOrganisationEmployees < ActiveRecord::Migration[8.0]
  def change
    create_table :organisation_employees do |t|
      t.string :firstname
      t.string :lastname

      t.timestamps
    end
  end
end
