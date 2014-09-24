class CollectionsController < ApplicationController
  def index
    # @collections = Collection.where(user_id: current_user.id)
  end

  def new
    @collection = Collection.new
    @collection = current_user.collection.new
  end

  def create
    @collection = Collection.where(user_id: current_user.id)
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end


# when current_user selects makeup to add to their collection, that makeup_id needs to attach itself to the collection of the user_id so that it will belong to the user, once it is attached we can call all the makeups in that current_user's collection in the show by 