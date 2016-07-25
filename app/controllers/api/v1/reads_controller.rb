class Api::V1::ReadsController < ApiController
  def create
    link = Link.find(params[:id])
    link.update(read: true)
    respond_with status: 200
  end
end
