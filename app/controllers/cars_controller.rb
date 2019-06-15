class CarsController < ApplicationController
  def index
    @cars = [
      OpenStruct.new(make: "Toyota", model: "Camry", model_year: "2005"),
      OpenStruct.new(make: "Toyota", model: "Corolla", model_year: "1999"),
      OpenStruct.new(make: "Ford", model: "Explorer", model_year: "2005"),
    ]
  end
end
