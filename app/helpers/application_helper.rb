module ApplicationHelper
  def promo_count
    promo = Promotion.new
    promo.get_promo_titles.keys.length
  end
end
