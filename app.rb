require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    @text_from_user = params[:user_text]
    @new = TextAnalyzer.new(@text_from_user) #CONNECT TO MODEL
    erb :results
  end

  




end
