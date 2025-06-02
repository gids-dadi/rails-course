class AddStateToOrganisationEmployees < ActiveRecord::Migration[8.0]
  def change
    add_reference :organisation_employees, :state, null: false, foreign_key: true
  end
end
