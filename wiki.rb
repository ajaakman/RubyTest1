# To run code in browser write "localhost:4567/".

require 'sinatra' # ctrl+c to terminate the server.

$myinfo = "Artur Jaakman" # $ indicates global variable.

@info = "" # @ indicates instance variable.

get '/' do # Root directory of web server.
	
	info = "Hello There! "
	
	@info = info + "" + $myinfo
	
	'<html><body>' +
	'<b>Menu</b><br>' +
	'<a href="/">Home</a><br>' +
	'<a href="/create">Create</a><br>' +
	'<a href="/about">About</a><br>' +
	'<br><br>' + @info +
	'</body></html>'
	
end

get '/about' do

	'<html><body>
	
	<b>Menu</b><br>
	
	<a href="/">Home</a><br>
	
	<a href="/create">Create</a><br>
	
	<a href="/about">About</a><br><br><br>' +
	'<h2>About us</h2>
	
	<p>This wiki was created by </p>' + $myinfo +'
	<p>Staff ID: 51773211</p>' +
	'</body></html>'
	
end

get '/create' do

	'<html><body>
	
	<b>Menu</b><br>
	
	<a href="/">Home</a><br>
	
	<a href="/create">Create</a><br>
	
	<a href="/about">About</a><br><br><br>' +
	'<h2>THis is your own personal create page!</h2>
	
	<section id="add">' + $myinfo + '</section>' +
	'</body></html>'
	
end


not_found do # Redirect to root directory if directory does not exist.

	status 404
	
	redirect '/'

end