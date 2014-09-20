class LinksController < ApplicationController
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
	format.html {render action: "show"}
	format.json {render json: @link}
      else
	format.html {render action: "new"}
	format.json {render json: @link.errors, status: unprocessable_entity}
      end
    end
  end

  def show
    @link = Link.where(id: params[:id]).first
  end

  def new
    @link = Link.new
  end

  private

  def link_params
    params.require(:link).permit(:id, :user_id, :url, :created_at, :updated_at, :title)
  end
end
