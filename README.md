# README

## Version
Ruby 2.6.1
Rails 5.2.3

Welcome to children's app a full-stack application built with Ruby 0n Rails connected to a Postgres DB.I employed sessions leveraging Devise(gem) for authentication/authorization. In additon you can login with Facebook using Omniauth. We have created a checkout system and implemented JavaScript to enable you to keep track of the books you have  taken out,in addition to just reviewing the books. Additional features will be added soon , stay tuned !! 

* System dependencies,
For all the dependencies see the gem file.

* Database initialization,
The db  for this rails app is built on postgresql, but can be  changed to other SQL DB.



## Usage
As we know  reading for children is great as it helps them with their cognitive development and to develop their  language, physical, social, and emotional skills.At a certain age we encourage these young minds to start reading on their own. How can we insure that the books they read and the concepts are  appropriate for that child? As we know children develop at different rates and may be scared or not understand certain concepts.  I developed this app so as a community we could build a resource of books we feel are appropriate (with some comments)
 
 ## See it live:
 [Click here](https://childrens-library-55.herokuapp.com/) 
 
 
## Installation
Fork  and clone the app [here](https://github.com/gbs4ever/childrens-library-) 

Run:
``bundle install``

Migrate database:
``rake db:create && rake db:migrate``

To run on your local machine:
 ``rails s``

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gbs4ever/childrens-library-
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the Contributor Covenant [code of conduct.](https://www.contributor-covenant.org/)



## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
