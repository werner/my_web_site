require "amatista"
require "option_parser"
require "./my_web_site/**"

class MainController < Amatista::Controller
  get "/" do
    respond_to(:html, IndexView.new.to_s)
  end
end

class Main < Amatista::Base
  configure do |conf|
    conf[:logs] = true
    conf[:public_dir] = "public"
  end
end

app = Main.new

p "Server running on 3000"
app.run 3000
