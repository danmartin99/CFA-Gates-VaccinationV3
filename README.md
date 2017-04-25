# README

This README would normally document whatever steps are necessary to get the
application up and running.

You can follow the steps below to setup or goto this link:-

https://evening-retreat-46821.herokuapp.com/ | https://git.heroku.com/evening-retreat-46821.git

Things you may want to cover:


cd rails/CFA-Gates-Vaccination


rails new . --database=postgresql


gem 'bootstrap-sass', '~> 3.3.6'
gem 'carrierwave', '~> 1.0'
gem 'pundit'
gem 'simple_form'
gem 'devise'
gem 'country_select'
gem 'simple_form_fancy_uploads'
gem 'omniauth'
#gem "brakeman", :require => false
gem 'cloudinary'
gem 'rubocop', require: false
gem 'rails_12factor', group: :production
# gem 'mailboxer' does not work as advertised


bundle


rake db:create


rake db:migrate


rails g simple_form:install --bootstrap *******rails generate simple_form:install*******


rake db:migrate


rails g scaffold Grcrd g_nam1:string g_name2:string g_idnum:integer g_photo:json g_title:string g_email:string


rake db:migrate


rails g scaffold Vaccinator vac_name1:string vac_name2:string vac_idnum:integer vac_photo:json vac_title:string vendor_name:string vac_email:string


rake db:migrate


rails g scaffold Patient first_name:string surname:string dob:date photo:json gender:boolean address1:string address2:string post_code:integer state:string country:string vaccinator:references


rake db:migrate


rails g scaffold Project pcountry:string pstate:string paddress1:string paddress2:string project:integer noofvac:integer grcrd:references


rake db:migrate


* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
