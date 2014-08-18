class Promotion < ActiveResource::Base

  attr_accessor :site

  def initialize
    @site = "http://www.webappcamp.ws/api/v0/promotions"
  end

  def get_promo_titles
    titles = []
    parsed_promos = self.get_all_promos
    parsed_promos['data'].each{|x| titles << x['title']}
    titles
  end

  protected

  def get_all_promos
    all_promos_raw = RestClient.get(@site)
    JSON.parse(all_promos_raw)
  end


end