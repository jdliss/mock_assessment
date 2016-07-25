class LinksController < ApplicationController
  def index
    if current_user
      @links = current_user.links
    else
      redirect_to login_path
    end
  end

  def create
    link = Link.new(link_params)
    link.user = current_user
    if link.save
      flash[:notice] = "link added!"
      redirect_to root_path
    else
      flash[:error] = "invalid link"
      redirect_to root_path
    end
  end

private

  def link_params
    params.permit(:title, :url)
  end
end
