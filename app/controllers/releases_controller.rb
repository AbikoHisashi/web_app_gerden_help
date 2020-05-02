class ReleasesController < ApplicationController
  def index
    @rs = Release.all
  end
end
