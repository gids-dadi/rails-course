class AddCountryToOrganisationEmployees < ActiveRecord::Migration[8.0]
  def change
    add_reference :organisation_employees, :country, null: false, foreign_key: true
  end
end
