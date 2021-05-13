class UserController < ApplicationController
  def register
    name = params[:name]
    password = params[:password]
    user = User.new(name: name, password: password, password_confirmation: password)
    if !user.save() then
      render json: { result: false, message: "Register failed." }
      return
    end

    render json: { result: true, message: "Register success." }
  end
end
