class PhonesController < ApplicationController
  #layout "application"

  def index
    render "index"
  end

  def list
    #render json: File.read("lib/phones/phones.json")#, :callback => params[:callback]
    @phones = Phone.all
    render json: @phones
  end

  def add
    render json: {result: 'OK'}
  end

  def details
    #render json: File.read("lib/phones/#{params[:model]}.json")#, :callback => params[:callback]
    @phone = Phone.find_by(phone_id: params[:model])
    render json: JSON.parse(@phone['additional_data'])
  end
end
