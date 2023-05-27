class SearchController < ApplicationController
  def index
    @facade = CharacterFacade.new(params[:nation])
  end
end