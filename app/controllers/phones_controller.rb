class PhonesController < ApplicationController
  #layout "application"

  def index
    render "index"
  end
  def list
    render json: File.read("lib/phones/phones.json")#, :callback => params[:callback]
  end

  def details
    render json: File.read("lib/phones/#{params[:model]}.json")#, :callback => params[:callback]
  end
end
