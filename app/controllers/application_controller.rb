class ApplicationController < ActionController::API
  before_action :initialize_belvo
  
  def initialize_belvo 
    @belvo = Belvo::Client.new(
      Figaro.env.belvo_secret,
      Figaro.env.belvo_password,
      'https://sandbox.belvo.co'
    )
  end
end
