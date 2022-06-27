require 'rails_helper'

RSpec.describe Movie, :type => :model do
  describe "Movie Validations" do
    let(:movie) { Movie.create(title: "my title")}

    it "valid with valid attributes" do
      expect(movie).to be_valid
    end

    it "not valid without a title" do
      movie.title = nil
      expect(movie).to_not be_valid
    end
  end
end
