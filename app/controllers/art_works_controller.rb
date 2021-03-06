class ArtWorksController < ApplicationController
  before_action :authenticate_user!

  def home
  end

  def gallery
    @art_works = ArtWork.all
  end

  def show
    @art_works = ArtWork.all
    @art_work = ArtWork.find(params[:id])
    @vote = Vote.new
  end

  def index
    @art_works = ArtWork.all
  end

  def new
    @art_work = ArtWork.new
  end

  def create
    @art_work = ArtWork.new(art_work_params)

    respond_to do |format|
      if @art_work.save
        format.html {redirect_to :back, flash: {success: "Art work saved"}}
      else
        format.html {redirect_to :back, flash:  {error: "Art work failed to save"}}
      end
    end
  end

  def destroy
    @art_work = ArtWork.find(params[:id])
    respond_to do |format|
      if @art_work.destroy
        format.html {redirect_to gallery_path, flash: {success: "Art work deleted"}}
      else
        format.html {redirect_to :back, flash:  {error: "Art work failed to be deleted"}}
      end
    end
  end


  private

  def art_work_params
    params.require(:art_work).permit(:name, :artist, :image, :vote_id)
  end

end
