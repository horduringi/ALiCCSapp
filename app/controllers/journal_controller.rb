class JournalController < ApplicationController
  def show
    @journal = Journal.find(params[:id])
    respond_to do |format|
      format.html { render "journal/show" }# show.html.erb
      format.json { render json: @journal }
    end
  end
end
