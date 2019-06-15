require "rails_helper"

RSpec.describe "Cars pages" do
  describe "index" do
    it "shows list of cars" do
      create(:car, make: "Toyota", model: "Camry", model_year: "2005")
      create(:car, make: "Toyota", model: "Corolla", model_year: "1999")
      create(:car, make: "Ford", model: "Explorer", model_year: "2005")

      visit "/cars"

      rows = page.find_all(".cars > tr")
      expect(rows[0].find_all("th").map(&:text)).to eq(["Make", "Model", "Model Year"])
      expect(rows[1].find_all("td").map(&:text)).to eq(["Toyota", "Camry", "2005"])
      expect(rows[2].find_all("td").map(&:text)).to eq(["Toyota", "Corolla", "1999"])
      expect(rows[3].find_all("td").map(&:text)).to eq(["Ford", "Explorer", "2005"])
    end
  end
end
