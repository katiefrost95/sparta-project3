require "sinatra"
class PlanetController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end


  #Homepage
  get "/planets" do
    @title = "Planets"
    @planets = Planet.all
    erb :'planets/home'
  end

  # New planets page
  get "/planets/new" do
    @planet = Planet.new
    erb :'planets/new'
  end

  # Show planets page
  get "/planets/:id" do
    id = params[:id].to_i
    @planet = Planet.find(id)
    erb :'planets/show'
  end

  # Post new
  post '/planets/' do
    planet = Planet.new
    planet.title = params[:title]
    planet.image = params[:image]
    planet.body = params[:body]
    planet.moons = params[:moons]
    planet.missions = params[:missions]
    planet.save
    redirect "/planets"
  end
#
  # Edit post
  put '/planets/:id' do
    id = params[:id].to_i
    planet = Planet.find(id)
    planet.id = params[:id]
    planet.title = params[:title]
    planet.image = params[:image]
    planet.body = params[:body]
    planet.moons = params[:moons]
    planet.missions = params[:missions]
    planet.save
    redirect '/planets'
  end
#
  # Delete
  delete "/planets/:id" do
    id = params[:id]
    Planet.destroy(id)
    redirect "/planets"
  end
#
  # Show edit page
  get "/planets/:id/edit" do
    id = params[:id].to_i
    @planet = Planet.find(id)
    erb :'planets/edit'
  end

end
