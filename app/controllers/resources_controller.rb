class ResourcesController < ApplicationController
  def video
    @resources = Resource.where(category: 0)
  end

  def kinesthetic
  end

  def audio
  end
end
