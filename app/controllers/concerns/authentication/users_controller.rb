class Authentication::UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
    @user = User.create(params)
  end
end
