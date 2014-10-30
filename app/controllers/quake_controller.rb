require 'net/http'

class QuakeController < ApplicationController
  def api
  	uri = URI("http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson")
	  data = Net::HTTP.get(uri)
	  # @parse_data = JSON.parse([data].to_json).first
	  @parse_data = JSON.parse(data)
  end
end
