class StaticController < ApplicationController
    respond_to :json

  def index
    # @makeups = Makeup.all
    # respond_with @makeups, each_serializer: MakeupSerializer
  end
end
