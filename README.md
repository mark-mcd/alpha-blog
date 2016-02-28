# Cloud 9 - Sinatra

## Setting Up Cloud9
- Go to `c9.io` and log in
- Create a new workspace
  - `Workspace name` = `hello-world`
  - `Clone from Git or Mercurial URL` = `https://gist.github.com/2f5f8bd2fdf583dc757a.git`
  - (everything else at defaults)


## In Cloud9
Check out the files you have in this folder, see what they have.

In the terminal (at the bottom) type:
- `bundle install`
  - this will install the ruby `gem`s you need to have sinatra run
- `ruby hello_world.rb -o $IP -p $PORT`
  - this will run the file hello_world.rb, and tell it to make the site available online at a location.
  - Cloud 9 has wired things up so `$IP` and `$PORT` contains what it should on their server.
- In the menu bar, click `Preview` => `Preview Running Application` and a browser pane will appear.
- After each change you make to our files:
  - save the file(s)
  - refresh the browser pane

## Templates
- Make a folder `views`
- Add the file `views/index.erb` with the content
```
<h1>This is my index.erb file contents oh my.</h1>
```
- modify `hello_world.rb` to use `index.erb` instead of returning a string.
  - Within the `get '/' do`: change `"Hello World! Welcome to Ruby!"` to `erb :index`.

## Pass Params
- Modify your `hello_world.rb` `get '/' do` to include:

```
  get '/' do 
    num = params['num'].to_i
    @result = num+10
    status 200
    erb :index  
  end
```

- Now in your index.erb add this to show the result 

```
  <%= "The result if #{@result}" %>
```

If we add ?num=10 to the url (mine looks like https://test-sk187.c9users.io/?num=10), the result should 20


- Now try to modify the code in hello_world.rb's get '/' route to work with the fizzbuzz code we did earlier.


## Pair Exercise
Get your FizzBuzz code from earlier to work on Sinatra. You go to `mysite.com/?num=10` and it displays on the page whether it is `fizz`, `buzz`, etc. For example `10: Fizz`