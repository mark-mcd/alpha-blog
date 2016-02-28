In your terminal:
- `cd hello_world`
  - if `pwd` returns something that ends in `hello_world`, you're in the right place
- `bundle`
  - this will install the ruby `gem`s you need to have sinatra run
- `ruby hello_world.rb-o $IP -p $PORT`
  - this will run the file hello_world.rb, and tell it to make the site available online at a location.
  - Cloud 9 has wired things up so `$IP` and `$PORT` contains what it should on their server.