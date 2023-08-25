require 'net/http'
  require 'json'
class HomeController < ApplicationController
  def index
  end

  def add
    @url = "http://api.openweathermap.org/data/2.5/weather?q=#{params["location"]},#{params["country"]}&APPID=98e69417823bcc1f60d4ac7dcf84dc28"
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @output = JSON.parse(@response)
    @map_url = "http://tile.openweathermap.org/maps/weather?q=London,UK/CL/9/511/511?appid=98e69417823bcc1f60d4ac7dcf84dc28"
    render :index
    # render "add"
  end
end
