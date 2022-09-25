class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    #Find a cheese using Id 
    cheese = Cheese.find_by(id: params[:id])
    #Send a JSON response
    render json: cheese
  end

end
