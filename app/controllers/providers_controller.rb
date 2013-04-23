# -*- encoding : utf-8 -*-
class ProvidersController < ApplicationController
  def index
  end

  def new
    @provider = Provider.new
  end

  def create
    @provider = Provider.new(params[:provider])
    if @provider.save
      flash[:success] = "供应商创建成功！"
    else
      render 'new'
    end
  end
end
