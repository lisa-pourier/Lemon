class OffersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      raise
      redirect_to offer_path(@offer)
    else
      render :new, status: :unprocessable_entity
    end
  end

private
def offer_params
  params.require(:offer).permit(:company, :description, :price, :location)
end

end
