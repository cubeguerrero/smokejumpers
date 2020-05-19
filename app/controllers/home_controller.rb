class HomeController < ApplicationController
  def index
    render json: {
      title: "Welcome to Smokejumpers",
      message: "SMOKERJUMPERS"
    }
  end
end
