class StaticPagesController < ApplicationController

  def index
    render template: 'static_pages/landing'
  end

end
