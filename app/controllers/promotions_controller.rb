class PromotionsController < ApplicationController

  def index
    promotions = Promotion.new
    @all_promo_titles = promotions.get_promo_titles
  end

  def show
    promo_id = params['id']
    # require 'pry'; binding.pry
    @promo_details = Promotion.get_promo_details(promo_id)
  end

end

