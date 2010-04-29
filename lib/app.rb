class App < Sinatra::Base
  set :app_file, __FILE__
  set :public, File.join(File.dirname(__FILE__), '..', 'public')
  set :static, true
  set :raise_errors, true
  
  get '/' do
    File.read(File.join('public', 'index.html'))
  end

end

