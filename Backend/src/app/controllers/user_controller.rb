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

  def login
    name = params[:name]
    password = params[:password]
    user = User.find_by(name: name)
    if user == nil then
      render json: { result: false, message: "Login failed." }
      return
    end

    session[:name] = name
    render json: { result: true, message: "Login success." }
  end

  def check
    render json: { is_login: session[:name] != nil }
  end
end
