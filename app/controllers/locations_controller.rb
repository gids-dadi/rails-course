class LocationsController < ApplicationController

  def states
    @states = Country.find(params[:country_id]).states
    render json: @states, status: :ok
  end


  def cities
    @cities = state.find(params[:state_id]).cities
    render json: @cities, status: :ok
  end
end
