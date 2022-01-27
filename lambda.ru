### works when invoked with rackup lambda.ru
run ->(t) { [200, {"Content-Type" => "text/html"}, ["<html><body><h1>Heading 1</h1><p>My content here</p></body></html>"]] }