module ApplicationHelper
  def promo_count
    promo = Promotion.new
    promo.get_promo_titles.keys.length
  end

  def to_price(integer)
    integer.to_s.scan(/./).insert(-3,'.').unshift('$').join
  end

  def percent_savings(og_price,crnt_price)
    (og_price - crnt_price) / og_price
  end
end
