class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
  end

  def kinesthetic
  end

  def audio
  end
end
