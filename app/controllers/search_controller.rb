class SearchController < ApplicationController
  def search
    if params[:keyword]
    @hotels = RakutenWebService::Travel::Hotel.search(largeClassCode: params[:keyword])
    end
  end
end

