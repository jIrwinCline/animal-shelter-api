# README

# _Possible Sequel_


 _This game uses the movie database API called OMDB._

 **By _Nick Ramsey, Jacob Irwin, Abdellah Ramadan, Lake Bramlett, Daniel Hongel_**

## Description

_A web-based game created using OMDB, a movies api. It takes common links between movies or shows, such as the same actor or location, and puts it upon the user to create the best fictional story linking those two movies._

## Setup/Installation Requirements

 These instructions are aimed for MacOS, and may require slight adjustments if using another OS:
1. Clone this repository
2. Open terminal and type `git clone [git link]`
3. Navigate to project directory using `cd` in terminal
4. Type `bundle install` in terminal to load Gems
5. You will need to have PostgresQL installed and running
6. In terminal, while in the root project directory, run $ `rake db:create`, `rake db:migrate`, and `rake db:seed`(if you want the fake data)
7. To run the API on localhost, run $ `rails s` in terminal
8. API is now locally hosted, open Postman to test api calls
9. First, navigate to `localhost:3000/register`, otherwise you will get denied permission without registering for an api key
10. Send a post request to '/register' to sign up! Enter username and password in Headers.
11. After registering, head to `/login` and pass your new username and password through headers. You will receive your authorization key and may begin passing it through headers under the key "authorization"
12. navigate to `/animals` with the authorization key entered
13. use options such as `/random` for a random animal. Enjoy.

## Using the Website

## Link to GitHub


_Link to GitHub repo:_
[Animal-Shelter-API](https://github.com/jIrwinCline/possible-sequel.git)

## Known Bugs

There are no known bugs at this time.

## Support and Contact Details

Please contact us if you encounter issues with this program, have suggestions, or would like to contribute to this or future projects. Please contact us at the following:

Email:
- jakobinwins@gmail.com

## Technologies Used

* Ruby
* Rails
* RubyGems
* Atom
* Git and Github
* PostgreSQL

### License

* _This software is licence under the MIT license._

Copyright (c) 2019 **_Jacob Irwin_**
