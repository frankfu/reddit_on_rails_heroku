class VotesController < ApplicationController
  before_filter :authenticate_user!

  def create
    @vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first
    @vote ||= current_user.votes.create(vote_params)
    @vote.update_attributes(:up => params[:vote][:up])
    redirect_to  :back
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :link_id, :up)
  end
end
