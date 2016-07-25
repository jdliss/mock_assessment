class Api::V1::UnreadsController < ApiController
  def create
    link = Link.find(params[:id])
    link.update(read: false)
    redirect_to root_path
  end
end
