class ResourcesController < ApplicationController
  def video
    @resources = Resource.all
  end

  def kinesthetic
  end

  def audio
  end
end
