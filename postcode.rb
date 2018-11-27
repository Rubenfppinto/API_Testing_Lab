require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  # attr_accessor :single_postcode_results, :multiple_postcode_result

  def get_single_postcode
    JSON.parse(self.class.get("/postcodes/KT65DL").body)
  end

  def get_multiple_postcodes(postcodes_array)
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => postcodes_array}).body)
  end

  def get_status
    get_single_postcode['status']
  end

  def get_postcode
    get_single_postcode['result']['postcode']
  end

  def get_quality
    get_single_postcode['result']['quality']
  end

  def get_survey_eastings
    get_single_postcode['result']['eastings']
  end
  
  def get_survey_eastings
    get_single_postcode['result']['eastings']
  end

  def get_survey_northings
    get_single_postcode['result']['northings']
  end

end

