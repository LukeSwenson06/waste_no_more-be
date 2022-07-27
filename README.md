<p align="center">
  <img src="https://i.imgur.com/rG1VD2K.png" />
</p>
<center><h1>Info</h1></center>
Have you ever gone to your fridge excited to cook a meal and find all your food is expired? Has it really been a week since you got them? This application can help you. This application will have users take pictures (or manual entries if the user doesn't have a camera) of the items that you get when going grocery shopping. Once the picture is taken of the label and expiration date, the item is saved to a user’s database. These items can then be tracked according to expiration date to try to combat the amount of food wasted each year by expiring.

## Built With 
   ![RoR](https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
   ![pgsql](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)
   ![heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)  

## Gems 
   ![rspec](https://img.shields.io/gem/v/rspec-rails?label=rspec&style=flat-square)
   ![shoulda](https://img.shields.io/gem/v/shoulda-matchers?label=shoulda-matchers&style=flat-square)
   ![capybara](https://img.shields.io/gem/v/capybara?label=capybara&style=flat-square)
   ![simplecov](https://img.shields.io/gem/v/simplecov?label=simplecov&style=flat-square)
   ![VCR](https://img.shields.io/gem/v/vcr?label=VCR&style=flat-square)
   ![webmock](https://img.shields.io/gem/v/webmock?label=webmock&style=flat-square)
   ![simplecov](https://img.shields.io/gem/v/simplecov?color=blue&label=simplecov)
   ![figaro](https://img.shields.io/gem/v/simplecov?color=blue&label=figaro)
   ![spring](https://img.shields.io/gem/v/simplecov?color=blue&label=spring)
   ![faker](https://img.shields.io/gem/v/simplecov?color=blue&label=faker)
   ![factory bot](https://img.shields.io/gem/v/simplecov?color=blue&label=factory_bot_rails)
   ![faraday](https://img.shields.io/gem/v/simplecov?color=blue&label=faraday)
   ![jsonapi-serializer](https://img.shields.io/gem/v/simplecov?color=blue&label=jsonapi-serializer)

## Configuration 

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:


## Database Creation

## Database Initialization

## Testing Instructions

## Services Provided

## Deployment Instructions

## Collaborators

* ...

<h1> End Points </h1>

Add item to fridge 

```
{
  "data": {
        "id": "2511",
        "type": "item",
        "attributes" : {
          "name": "apple",
          "expiration": "2112-12-21"
        }
  }
}
```
