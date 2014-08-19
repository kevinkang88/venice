class PromotionsController < ApplicationController

  def index
    promotions = Promotion.new
    @all_promo_titles = promotions.get_promo_titles
  end

  def show

  end

end

