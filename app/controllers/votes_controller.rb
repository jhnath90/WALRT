class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)

    respond_to do |format|
      if @vote.save
        format.html {redirect_to :back, flash: {success: "Vote saved"}}
      else
        format.html {redirect_to :back, flash:  {error: "Vote failed to save"}}
      end
    end
  end

  def destroy
    @vote = Vote.find(params[:id])
    respond_to do |format|
      if @vote.destroy
        format.html {redirect_to :back, flash: {success: "Vote deleted"}}
      else
        format.html {redirect_to :back, flash:  {error: "Vote failed to be deleted"}}
      end
    end
  end


  private

  def vote_params
    params.require(:vote).permit(:user_id, :art_work_id)
  end
end
