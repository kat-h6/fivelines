class ResourcesController < ApplicationController
  def index
   @chapters = Chapter.all
   @resources = current_user.resources
  end


  def show
    @resource = Resource.find(params[:id])
    @chapter = @resource.chapter
  end 

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @resource = Resource.new
    @resource.chapter = @chapter

  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @resource = Resource.new(resource_params)
    @resource.chapter = @chapter
    @resource.user = current_user

    if @resource.save
      redirect_to resource_path(@resource)
    else
      render :new
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :chapter_id, :photo, :video)
  end

end
