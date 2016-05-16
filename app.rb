require "sinatra"
require_relative "config/application"

get '/' do
  redirect to('/projects')
end

get '/projects' do
  @projects = Project.all

  erb :index
end

get '/projects/:id' do
  @project = Project.find_by(id: params[:id])
  @users   = Team.where(project: params[:id])
  @tasks   = Task.where(project: params[:id])

  erb :show
end
