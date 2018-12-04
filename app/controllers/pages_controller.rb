class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def show
    render template: "pages/#{params[:page]}"
  end
end
