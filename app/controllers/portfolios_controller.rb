class PortfoliosController < ApplicationController
before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
layout 'portfolio'
access all: [:show, :index, :angular, :ruby_on_rails], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @portfolio_items = Portfolio.order("position ASC")
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
    3.times { @portfolio_item.technologies.build }
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your Portfolio Item is Live' }
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
    params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name])
  end

  def set_portfolio_item
    @portfolio_item = Portfolio.find(params[:id])
  end

end
