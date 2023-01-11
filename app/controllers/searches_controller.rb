class SearchesController

  def search
    @results = PgSearch.multisearch(params[:query])
  end
end
