# require "pp"
class MyApp
    def call(env)
        env.each { |key, value| puts "#{key} = #{value}" if key =~ /HTTP/i }
        # will only print the k-v pairs where the key is a request header

        status  = 200
        headers = { "Content-Type" => "text/html" }
        body    = ["<html><body><h1>Heading 1</h1><p>Dale Leon</p></body></html>"]
    
        p [status, headers, body]
    end
end
run MyApp.new