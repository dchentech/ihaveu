require 'rubygems'
require 'hotcocoa'
framework 'WebKit'

class Application
  include HotCocoa

  def start
    application :name => "ihaveu" do |app|
      app.delegate = self
      window :frame => [0, 0, 1350, 800], :title => "优众 - About life, About friend", :style => [:titled, :closable, :miniaturizable] do |win|
        win.will_close { exit }
        win << web_view(:frame => [0, 0, 1340, 790]) do |wv|
          wv.url = "http://www.ihaveu.com"
          wv.auto_size
        end
      end
    end
  end

end

Application.new.start
