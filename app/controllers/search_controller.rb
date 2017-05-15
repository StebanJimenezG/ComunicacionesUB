class SearchController < ApplicationController
  def create
    palabra = "%#{params[:keyword]}%"
    palabra1 = "%#{params[:keyword1]}%"

    if palabra != ""
      @committees = Committee.where('nombre LIKE ?', palabra)
      respond_to do |format|
        format.html { redirect_to root_path}
        format.json {render json: @committees}
        format.js
      end
    end
end
end
