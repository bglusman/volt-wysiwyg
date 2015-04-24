# See https://github.com/voltrb/volt#routes for more info on routes

get '/about', action: 'about'

# Routes for login and signup, provided by user_templates component gem
get '/signup', component: 'user_templates', controller: 'signup'
get '/login', component: 'user_templates', controller: 'login'

# The main route, this should be last. It will match any params not
# previously matched.
get '/', {}
