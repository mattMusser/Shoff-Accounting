class SheetLinksController < ApplicationController
  def show
    @sheet_link = SheetLink.find(params[:id])
    authorize @sheet_link
    redirect_to @sheet_link.url
  end

  def new
    @sheet_link = SheetLink.new
  end

  def create
    @sheet_link = SheetLink.find(params[:id])
    @sheet = @sheet.build(link_params)
    authorize @sheet

    if @sheet_link.save
      flash[:notice] = "Link was saved."
      redirect_to :root
    else
      flash.now[:alert] = "Something went wrong and your link wasn't saved. Please try again."
      render :new
    end
  end

  def edit
    @sheet_link = SheetLink.find(params[:id])
    authorize @sheet_link
  end

  def update
    @sheet_link = SheetLink.find(params[:id])

    @sheet_link.assign_attributes(link_params)
    if @sheet_link.save
      flash[:notice] = "Link was updated."
      redirect_to :root
    else
      flash.now[:alert] = "Something went wrong and the link wasn't saved. Please try again."
      render :edit
    end
  end

  def destroy
    @sheet_link = SheetLink.find(params[:id])

    if @sheet_link.destroy
      flash[:notice] = "\"#{@sheel_link.url}\" was deleted successfully."
      redirect_to :show
    else
      flash[:alert] = "Something went wrong and the link wasn't saved."
      render :show
    end
  end

  private
  def link_params
    params.require(:sheet_links).permit(:url)
  end
end
