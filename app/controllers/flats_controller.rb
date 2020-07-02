class FlatsController < ApplicationController
  before_action :find_flat, only: [:show, :edit, :update, :destroy]
  def index
    @flats = Flat.where('name LIKE ?', "%#{params[:query]}%") || Flat.all
    @images = ['https://images.unsplash.com/photo-1494526585095-c41746248156?w=1200',
               'https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=1200',
               'https://images.unsplash.com/photo-1493809842364-78817add7ffb?w=1200']
  end

  def new
    @flat = Flat.new
  end

  def create
    flat = Flat.new(flat_params)
    if flat.save
      redirect_to flat_path(flat)
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @flat.update(flat_params)
      redirect_to flat_path(@flat)
    else
      render 'edit'
    end
  end

  def destroy
    @flat.destroy
    redirect_to root_path
  end

  private

  def find_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests)
  end
end
