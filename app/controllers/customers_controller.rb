# -*- encoding : utf-8 -*-
class CustomersController < ApplicationController
  def index
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params[:customer])
    if @customer.save
      flash[:success] = "客户信息创建成功！"
      render 'new'
    else
      render 'new'
    end
  end
end
