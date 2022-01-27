# require "pp"
class MyApp
    def call(env)
        env.each { |key, value| puts "#{key} = #{value}" if key =~ /[ab]/i }
        # will only print the k-v pairs for some key values

        status  = 200
        headers = { "Content-Type" => "text/html" }
        body    = ["<html><body><h1>Heading 1</h1><p>This is a <em>paragraph</em></p></body></html>"]
    
        p [status, headers, body]
    end
end
t = MyApp.new
t.call({:a => "A", :b => "B", :c => "C", :Sendro => "Asdf"})
p t.class