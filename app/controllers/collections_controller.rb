class CollectionsController < ApplicationController
  layout :resolve_layout

  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)

    if @collection.save
      redirect_to @collection
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])

    if @collection.update(collection_params)
      redirect_to @collection
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy
    respond_to do |format|
      format.html { redirect_to collections_path, notice: 'Collection was successfully delete.' }
      format.json { head :no_content }
    end
  end

  private
  def collection_params
    params.require(:collection).permit(:title, :description, :publish, images: [])
  end

  def resolve_layout
    if signed_in?
      "admin"
    else
      "application"
    end
  end
end
