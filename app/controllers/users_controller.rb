# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.paginate(page: params[:page], per_page: 20)
#    authorize! :index, @users, :message => '没有足够的权限访问。'
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "用户删除成功！"
    redirect_to users_path
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(params[:user])
    if @user.save
      flash[:success] = "用户创建成功！"
      redirect_to users_path
    else
      render 'new'
    end
  end
end