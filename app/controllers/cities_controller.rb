class CitiesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "cities.name ILIKE :query"
      @cities = City.where(sql_query, query: "%#{params[:query]}%")
    else
      @cities = nil
    end
  end

  def show
    @city = City.find(params[:id])
  end
end
