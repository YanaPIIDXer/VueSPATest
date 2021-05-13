class HelloController < ApplicationController
  def index
    data = {message: "hello"}
    render json: data
  end
end
