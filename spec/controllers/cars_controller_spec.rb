require "rails_helper"

RSpec.describe CarsController do
  describe "GET index" do
    it "assigns cars" do
      car_1 = create(:car, make: "Toyota", model: "Camry", model_year: "2005")
      car_2 = create(:car, make: "Toyota", model: "Corolla", model_year: "1999")
      car_3 = create(:car, make: "Ford", model: "Explorer", model_year: "2005")

      get :index

      expect(assigns(:cars)).to eq([
        car_1,
        car_2,
        car_3,
      ])
    end
  end
end
