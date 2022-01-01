class MyApp
    def m(a1,a2,a3,a4,a5)
        a4 + 200
    end

    def call(env)
      status  = 200
      headers = { "Content-Type" => "text/html" }
      body    = ["<html><body><h1>Heading 1</h1><p>Should be 206 :: #{m(3,4,5,6,7)}</p></body></html>"]
  
      [status, headers, body]
    end
end
  
run MyApp.new