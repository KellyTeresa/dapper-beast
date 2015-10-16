class HomesController < ApplicationController
  def index
    @projects = Link.where(project: true)
    @other = Link.where(project: false).order('name ASC')

    client = Tumblr::Client.new :consumer_key => ENV["TUMBLR_AUTH"]
    most_recent_post_data = client.posts 'kellyraila.tumblr.com', :limit => 1
    @post = most_recent_post_data["posts"][0]
  end
end
