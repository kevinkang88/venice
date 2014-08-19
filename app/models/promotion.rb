class Promotion < ActiveResource::Base

  attr_accessor :site

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