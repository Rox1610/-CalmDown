class ResourcesController < ApplicationController
  def video
    @resources = Resource.all
  end
end
