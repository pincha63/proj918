require "roda"
require "slim"
require "sassc"

class Myapp < Roda
    plugin :public
    plugin :assets, css: 'styles.scss'
    plugin :render, engine: 'slim'
    plugin :partials, views: 'views'
    plugin :head
    route do |r|
        print "This is the value of r : "
        p r
        r.assets
        r.public
        r.root do
            @title = "App in Roda"
            view("homepage")
        end
        r.get "about" do
            @title = "App in Roda - - about"
            view("about")
        end
        r.get "contact" do
            @title = "App in Roda - - contact"
            view("contact")
        end
    end
end
