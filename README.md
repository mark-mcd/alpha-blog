# Cloud 9 - Sinatra + Stripe

## Setting Up Cloud9
- Go to `c9.io` and log in
- Create a new workspace
  - `Workspace name` = `hello-stripe`
  - `Clone from Git or Mercurial URL` = `https://gist.github.com/f71ef966f488ab8fd984e0791cf96c07.git`
  - (everything else at defaults)


## In Cloud9
Check out the files you have in this folder, see what they have.

In the terminal (at the bottom where it says `bash`) type:
- `bundle install`
  - this will install the ruby `gem`s listed in the `Gemfile` that you need to have sinatra run
- If that throws an error please run `gem install sinatra sinatra-contrib stripe`
- `ruby hello_world.rb -o $IP -p $PORT`
  - this will run the file hello_world.rb, and tell it to make the site available online at a location.
  - Cloud 9 has wired things up so `$IP` and `$PORT` contains what it should on their server.
- In the menu bar, click `Preview` => `Preview Running Application` and a browser pane will appear.
- After each change you make to our files:
  - save the file(s)
  - refresh the browser pane
