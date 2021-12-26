require "roda"
require "slim"
require "sassc"

class Myapp < Roda
    plugin :public
    # plugin :static, ['/images'], root: 'public'  # path: /path/to/app/pub
    plugin :assets, css: 'styles.scss'
    plugin :render, engine: 'slim'
    plugin :partials, views: 'views'
    plugin :head
    @layout_str = "Won't be seen inside the destination pages"
    route do |r|
        r.assets
        p r
        @layout_str = "Layout"
        r.public
        r.root do
            @title = "App in Roda"
            @layout_str = "Layout String"
            @homepage_str = "Homepage String"
            view("homepage")
        end
        r.get "about" do
            @title = "App in Roda - - about"
            @layout_str = "Cheating Layout String"
            @about_str = "About String"
            view("about")
        end
        r.get "contact" do
            @title = "App in Roda - - contact"
            @layout_str = "Cheating Layout String"
            @contact_str = "Contact String"
            view("contact")
        end
    end
end
