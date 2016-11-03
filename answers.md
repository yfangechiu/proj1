# Q0: Why is this error being thrown?
"uninitialized constant HomeController::Pokemon" is being thrown because the Pokemon model doesn't exist yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
The random Pokemon are appearing due to the seeds in seeds.rb being generated with a random . The common factor between all the possible Pokemon that appear is that they are all in the Pokemon database.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

This creates a button with the words "Throw a Pokeball!" that when clicked on will call on the capture method and pass in the id of pokemon to the capture method.

# Question 3: What would you name your own Pokemon?
Peewee

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in "id: @pokemon.trainer_id" and I didn't need a path because redirect_to takes in parameters (hash).

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
Flash allows us to display an action that is saved before the redirect so pokemon's errors is saved and then displayed when the redirect happens.

# Give us feedback on the project and decal below!
This was a fun project! I just had little mistakes that confused me for a long time!

# Extra credit: Link your Heroku deployed app


https://github.com/yfangechiu/proj1