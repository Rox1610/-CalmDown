class ResourcesController < ApplicationController
  def video
    @resources = Resource.find_by(category: 0)
  end

  def kinesthetic
  end

  def audio
  end
end
