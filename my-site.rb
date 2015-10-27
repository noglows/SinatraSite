require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/about.html" do
    erb :about
  end

  get "/blog.html" do
    erb :blog
  end

  get "/projects.html" do
    erb :projects
  end

  get "/index.html" do
    erb :index
  end
end
