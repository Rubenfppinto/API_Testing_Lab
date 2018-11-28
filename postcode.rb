require 'httparty'
require 'json'

class Postcodesio
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode
    JSON.parse(self.class.get("/postcodes/KT65DL").body)
  end

  def get_multiple_postcodes
    JSON.parse(self.class.post('/postcodes', body: { "postcodes" => ["EN1 4TY","CA8 2AB","KT24 5ER"]}).body)
  end

  #methods to pull information for a single postcode request
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

  def get_survey_northings
    get_single_postcode['result']['northings']
  end

  def get_nhs_ha
    get_single_postcode['result']['nhs_ha']
  end

  def get_valid_uk_country
    get_single_postcode['result']['country']
  end

  def get_longitude
    get_single_postcode['result']['longitude']
  end

  def get_latitude
    get_single_postcode['result']['latitude']
  end

  def get_parliamentary_constituency
    get_single_postcode['result']['parliamentary_constituency']
  end

  def get_european_electoral_region
    get_single_postcode['result']['european_electoral_region']
  end

  def get_primary_care_trust
    get_single_postcode['result']['primary_care_trust']
  end

  def get_region
    get_single_postcode['result']['region']
  end

  def get_parish
    get_single_postcode['result']['parish']
  end

  def get_lsoa
    get_single_postcode['result']['lsoa']
  end

  def get_msoa
    get_single_postcode['result']['msoa']
  end

  def get_admin_district
    get_single_postcode['result']['admin_district']
  end

  def get_incode 
    get_single_postcode['result']['incode']
  end

  #methods to pull information for a multiple postcode request
  def get_status_multiple
    get_multiple_postcodes['status']
  end

  def get_postcode_multiple
    get_multiple_postcodes['result']['postcode']
  end

  def get_quality_multiple
    get_multiple_postcodes['result']['quality']
  end

  def get_ordnance_eastings_multiple
    get_multiple_postcodes['result']['eastings']
  end

  def get_ordnance_northing_multiple
    get_multiple_postcodes['result']['northing']
  end

  def get_valid_uk_country_multiple
    get_multiple_postcodes['result']['country']
  end

  def get_nhs_ha_multiple
    get_multiple_postcodes['result']['nhs_ha']
  end

  def get_longitude_multiple
    get_multiple_postcodes['result']['longitude']
  end

  def get_latitude_multiple
    get_multiple_postcodes['result']['latitude']
  end

  def get_parliamentary_constituency_multiple
    get_multiple_postcodes['result']['parliamentary_constituency']
  end

  def get_european_electoral_region_multiples
    get_multiple_postcodes['result']['european_electoral_region']
  end

  def get_prime_care_trust_multiples
    get_multiple_postcodes['result']['primary_care_trust']
  end

  def get_region_multiple
    get_multiple_postcodes['result']['region']
  end

  def get_parish_multiple
    get_multiple_postcodes['result']['parish']
  end

  def get_lsoa_multiple
    get_multiple_postcodes['result']['lsoa']
  end

  def get_msoa_multiple
    get_multiple_postcodes['result']['msoa']
  end

  def get_admin_district_multiple
    get_multiple_postcodes['result']['admin_district']
  end

  def get_incode_multiple
    get_multiple_postcodes['result']['incode']
  end
end

