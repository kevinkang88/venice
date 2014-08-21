class PromotionsController < ApplicationController

  def index
    promotions = Promotion.new
    @all_promo_titles = promotions.get_promo_titles
    if params['promoId']
      promo_id = params['promoId']
      @promo_details=Promotion.get_promo_details(promo_id)
      respond_to do |format|
        format.html
        format.json {render :json=> @promo_details}
      end
    end
  end




  def show
    promo_id = params['id']
    # require 'pry'; binding.pry
    @promo_details = Promotion.get_promo_details(promo_id)
    respond_to do |format|
      format.js
      format.html
    end
  end

end

