require 'sinatra'
require 'active_record'
require_relative './app/models/dogsled'

ActiveRecord::Base.establish_connection(adapter: 'postgresql')

get '/' do
  erb :test
  # puts params
end

get '/:name' do
  @name = params[:name]
  Dogsled.create(name: @name)
end
