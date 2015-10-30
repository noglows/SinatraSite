require "sinatra"

class MySite < Sinatra::Base

  def set_variables
    @page_options = {}
    @page_options["Home"] = "index"
    @page_options["About Me"] = "about"
    @page_options["Projects"] = "projects"
    @page_options["Blog"] = "blog"
    @page_options["Favorite Things"] = "fav_things"
    return @page_options
  end

  def stored_gifs
     @gif_options = ["halloween.gif",
    "http://i.imgur.com/FG2wcV7.gif",
    "http://i.imgur.com/k6o6lvs.gif",
    "http://i.imgur.com/x49iBe9.gif",
    "http://giant.gfycat.com/HardUnacceptableCockerspaniel.gif",
    "http://i.imgur.com/EpTz5rO.webm",
    "http://i.imgur.com/FWJtwXm.webm",
    "https://i.imgur.com/WJBkMZ1.gif"
   ]
   @selected_gif = @gif_options[rand(0...@gif_options.length)]
    return @selected_gif
  end

  get "/" do
    @title = "Home"
    @page_header = "Jessica Noglows"
    set_variables
    erb :index
  end

  get "/index" do
    @title = "Home"
    @page_header = "Jessica Noglows"
    set_variables
    erb :index
  end

  get "/about" do
    @title = "About Me"
    @page_header = "About Me"
    set_variables
    erb :about
  end

  get "/blog" do
    @title = "Blog"
    @page_header = "My Blog"
    set_variables
    erb :blog
  end

  get "/projects" do
    @title = "Projects"
    @page_header = "Projects"
    set_variables
    erb :projects
  end

  get "/fav_things" do
    @title = "Favorite Things"
    @page_header = "My Favorite Things"
    set_variables
    stored_gifs
    erb :fav_things
  end

end
