# -*- encoding : utf-8 -*-
class CommoditiesController < ApplicationController
  def index
  end

  def new
    @commodity = Commodity.new
  end

  def create
    @commodity = Commodity.new(params[:commodity])
    if @commodity.save
      flash[:success] = "商品信息创建成功！"
      render 'new'
    else
      render 'new'
    end
  end
end
