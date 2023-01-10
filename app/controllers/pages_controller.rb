class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @user = current_user
  end

  def search
    # PgSearch::Multisearch.rebuild(User)
    # PgSearch::Multisearch.rebuild(Event)
    # PgSearch::Multisearch.rebuild(Group)
    @results = PgSearch.multisearch(params[:query])
    @results = @results.map { |result| result.searchable }
  end
end
