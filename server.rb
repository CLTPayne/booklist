require 'sinatra'

class Booklist < Sinatra::Base

  get '/' do
    "Welcome to Charlotte's Booklist"
  end

  run! if server == $0
end
