class HomesController < ApplicationController
  def index
    @projects = Link.where(project: true)
    @other = Link.where(project: false)
  end
end
