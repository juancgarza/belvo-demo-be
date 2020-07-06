class HomeController < ApplicationController
  def get_token
    response = @belvo.widget_token.create 

    render json: response
  end
end
