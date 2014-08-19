class Promotion < ActiveResource::Base

  attr_accessor :site

  def self.get_promo_details(promo_id)
    detailed_promo_raw = RestClient.get("http://www.webappcamp.ws/api/v0/promotions/#{promo_id}")
    JSON.parse(detailed_promo_raw)['data']
  end

  def initialize
    @site = "http://www.webappcamp.ws/api/v0/promotions"
  end

  def get_promo_titles
    title_ids = {}
    parsed_promos = self.get_all_promos
    parsed_promos['data'].each{|x| title_ids[x['title']] = x['id']}
    # the output hash key, is the title and the value is the id of the book
    title_ids
  end


  protected

  def get_all_promos
    all_promos_raw = RestClient.get(@site)
    JSON.parse(all_promos_raw)
  end

end

