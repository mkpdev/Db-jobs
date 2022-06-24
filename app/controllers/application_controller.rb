class ApplicationController < ActionController::API
  before_action :authenticate_user

  private

  def authenticate_user
    user = User.find_by(auth_token: request.headers["TOKEN"])
    if user.present?
      visit = user.visits.build
      visit.save!
      return true
    else
      render json: { errors: ['Not Authenticated'] }, status: :unauthorized
    end
  end
end
