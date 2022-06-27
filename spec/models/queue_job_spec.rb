require 'rails_helper'

RSpec.describe QueueJob, :type => :model do
  describe "Movie Validations" do
    let(:quejob) { QueueJob.create(priority: 1)}

    it "valid with valid attributes" do
      expect(quejob).to be_valid
    end

    it "not valid without a title" do
      quejob.priority = nil
      expect(quejob).to_not be_valid
    end

    it "status should be waiting by default" do
      expect(quejob.status).to eq("waiting")
    end
  end
end
