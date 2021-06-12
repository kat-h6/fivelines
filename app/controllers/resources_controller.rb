class ResourcesController < ApplicationController
  def index
   @resources = Resource.all
  end 

  def show
    @resource = Resource.find(params[:id])
    @chapter = @chapter.resource
  end 

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @resource = Resource.new
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @resource = Resource.new(resource_params)
    @resource.chapter = @chapter

    if @resource.save
      redirect_to resources_path
    else
      render :new
    end
  end

  private

  def resource_params
    params.require(:resource).permit(:title, :chapter_id)
  end

end
