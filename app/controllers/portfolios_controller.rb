class PortfoliosController < ApplicationController
before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
layout 'portfolio'
access all: [:show, :index, :angular, :ruby_on_rails], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.order("position ASC")
  end

  def sort
    params[:order].each do |key, value|
      Portfolio.find(value[:id]).update(position: value[:position])
    end
    render nothing: true
  end

  def angular
    @angular_portfolio_items = Portfolio.angular
  end

#ruby page
  def ruby_on_rails
    @ruby_on_rails_portfolio_items = Portfolio.ruby_on_rails
  end
#ruby page

  def new
    @portfolio_item = Portfolio.new
    @page_title = "New Portfolio"
    @portfolio_item.technologies.build
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @page_title = "Edit Portfolio"
  end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolios_path, notice: 'The Portfolio was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    @page_title = @portfolio_item.title
  end

  def destroy
    #delete item
    @portfolio_item.destroy

    #redirect to page
    respond_to do |format|
      format.html { redirect_to portfolios_url notice: 'Record was successfully Deleted.' }
    end
  end

  private

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :thumb_image, :main_image, technologies_attributes: [:id, :name, :_destroy])
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

end
