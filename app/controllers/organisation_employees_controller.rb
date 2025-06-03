class OrganisationEmployeesController < ApplicationController

  def new
    @organisation_employee = OrganisationEmployee.new
  end

  def def create
    @organisation_employee = OrganisationEmployee.new(organisation_employee_params)

    if @organisation_employee.save
      redirect_to new_organisation_employee_path
    else
      render :new, status: 'Organisation employee was successfully created.'
    end
  end

  private
  def organisation_employee_params
    params.require(:organisation_employee).permit(
      :firstname,
      :lastname,
      :country_id,
      :state_id,
      :city_id,
    )
  end
end
