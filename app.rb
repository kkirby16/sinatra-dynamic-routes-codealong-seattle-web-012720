require_relative "config/environment"

class App < Sinatra::Base

  # This is a sample static route.
  get "/goodbye" do
    "Goodbye World!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/multiply/:num1/:num2" do
    @product = params[:num1].to_i * params[:num2].to_i
    "Product is #{@product}"
  end

  # Code your final two routes here:

end
