class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def show
    @offer = Offer.find(params[:id])
  end

  def index
    @offers = Offer.all
  end
end
