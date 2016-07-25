class Api::V1::UnreadsController < ApiController
  def create
    link = Link.find(params[:id])
    link.update(read: false)
    respond_with status: 200
  end
end
