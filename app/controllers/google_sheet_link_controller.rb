class GoogleSheetLinkController < ApplicationController
  def show
    @sheet_link = GoogleSheetLink.find(params[:id])
    redirect_to @sheet_link.url
  end

  def new
    @sheet_link = GoogleSheetLink.new
  end

  def create
    @sheet_link = GoogleSheetLink.find(params[:id])
    @sheet = @sheet.build(link_params)

    if @sheet_link.save
      flash[:notice] = "Link was saved."
      redirect_to :show
    else
      flash.now[:alert] = "Something went wrong and your link wasn't saved. Please try again."
      render :new
    end
  end

  def edit
    @sheet_link = GoogleSheetLink.find(params[:id])
  end

  def update
    @sheet_link = GoogleSheetLink.find(params[:id])

    @sheet_link.assign_attributes(link_params)
    if @sheet_link.save
      flash[:notice] = "Link was updated."
      redirect_to show
    else
      flash.now[:alert] = "Something went wrong and the link wasn't saved. Please try again."
      render :edit
    end
  end

  def destroy
    @sheet_link = GoogleSheetLink.find(params[:id])

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
    params.require(:google_sheet_link).permit(:url)
  end
end
