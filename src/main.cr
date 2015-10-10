require "amatista"
require "option_parser"
require "./my_web_site/*"

class MainController < Amatista::Controller
  get "/" do
    html = "Hola Mundo"
    respond_to(:html, html)
  end
end

class Main < Amatista::Base
  configure do |conf|
    conf[:logs] = true
  end
end

app = Main.new

app.run 3000
