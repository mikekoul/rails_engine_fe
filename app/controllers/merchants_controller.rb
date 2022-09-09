class MerchantsController < ApplicationController
  
  def index
    @merchants = MerchantFacade.all_merchants  
  end

  def show
    @items = ItemFacade.items(params[:id])
  end
end