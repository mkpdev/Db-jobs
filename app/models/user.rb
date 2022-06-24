class User < ApplicationRecord
  before_create :set_token
  has_many :visits

  def set_token
    self.auth_token = Random.hex(10)
  end
end
