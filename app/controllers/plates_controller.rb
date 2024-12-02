class PlatesController < ApplicationController
  def new
    @collection = Collection.find(params[:collection_id])
    @plate = @collection.plates.build
  end

  def create
    @collection = Collection.find(params[:collection_id])
    @plate = @collection.plates.create(plate_params)
    redirect_to collection_path(@collection)
  end

  def destroy
    @collection = Collection.find(params[:collection_id])
    @plate = @collection.plates.find(params[:id])
    @plate.destroy
    redirect_to collection_path(@collection), status: :see_other
  end

  private
  def plate_params
    params.require(:plate).permit(:title, :image, :order)
  end
end
