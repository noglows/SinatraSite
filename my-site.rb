require "sinatra"

class MySite < Sinatra::Base

  get "/" do
    erb :index
  end

  get "/about" do
    erb :about
  end

  get "/blog" do
    erb :blog
  end

  get "/projects" do
    erb :projects
  end

  get "/index" do
    erb :index
  end
end
