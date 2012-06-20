module Sinatra
  module Pages
    def self.registered(app)
      app.get '/' do
        readme = './README.md'
        text = File.open(readme) { |f| f.read }
        text = text.force_encoding("UTF-8")
        text = text.match(/Welcome.*$/m)[0] if text['Welcome']
        text = text.match(/(.*)History$/m)[1] if text['History']

        @text = Maruku.new(text).to_html
        haml "pages/index".to_sym  
      end
    end
  end
  register Pages
end

