class SiteController < ApplicationController
  def index
    if (user_signed_in?)
      redirect_to dashboard_url, notice: "Bienvenid@ #{current_user.fullname}"
    end
  end
end
