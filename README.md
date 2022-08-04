<p align="center">
  <img src="https://i.imgur.com/rG1VD2K.png" />
</p>
<center><h1>Info</h1></center>
Have you ever gone to your fridge excited to cook a meal and find all your food is expired? Has it really been a week since you got them? This application can help you. This application will have users take pictures (or manual entries if the user doesn't have a camera) of the items that you get when going grocery shopping. Once the picture is taken of the label and expiration date, the item is saved to a user’s database. These items can then be tracked according to expiration date to try to combat the amount of food wasted each year by expiring.

## About the Project
 Waste No More is an application dedicated to help people reduce food waste at home by tracking food items, expiration dates, and help locate the nearest donation centers for food close to expiring. Resources are provided to educate users on food waste management, food storage and how to donate food. This project was created for the 2203 Backend Program Module 3 Consultancy Project.  

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
   ![figaro](https://img.shields.io/gem/v/figaro?color=blue&label=figaro)
   ![spring](https://img.shields.io/gem/v/spring?color=blue&label=spring)
   ![faker](https://img.shields.io/gem/v/faker?color=blue&label=faker)
   ![factory bot](https://img.shields.io/gem/v/factory_bot_rails?color=blue&label=factory_bot_rails)
   ![faraday](https://img.shields.io/gem/v/faraday?color=blue&label=faraday)
   ![jsonapi-serializer](https://img.shields.io/gem/v/jsonapi-serializer?color=blue&label=jsonapi-serializer)

## Set Up
- Clone this repo
- `bundle install`
- `rails s`

## Database Creation
- `rails db:{create,migrate}``

## Database Structure

![Database](/images/Screen%20Shot%202022-08-04%20at%205.06.21%20PM.png)

## Testing Instructions

 - Clone this repo
 - in terminal (apple or integrated)    
    * bundle install
    * bundle exec rspec 

## Deployment Instructions

- Once both database and testing instructions are completed
- visit ![Front End Database][https://github.com/LukeSwenson06/waste-no-more-fe]
    - follow installation instructions

## End Points

#### Add item to fridge 

```
get https://waste-no-more-fe.herokuapp.com/api/v1/items/create
```

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

#### Add item to fridge 

```
get https://waste-no-more-fe.herokuapp.com/api/v1/items/delete
```

```
{
  "data": {
        "id": "2511",
        "type": "item",
        "attributes" : {
          "name": "apple",
          "expiration": "2012-12-21"
        }
  }
}
```

#### Show a User

```
get https://waste-no-more-fe.herokuapp.com/api/v1/users/show
```

```
{
  "data": {
      "id": "2112",
      "type": "user",
      "attributes" : {
        "name": "Geddy",
        "email": "rocinante@cygnus.com"
      }
    }
}
```

#### Create a User

```
get https://waste-no-more-fe.herokuapp.com/api/v1/users/create
```

```
{
  "data": {
      "id": "2112",
      "type": "user",
      "attributes" : {
        "name": "Geddy",
        "email": "rocinante@cygnus.com"
      }
    }
}
```



## Contributions
<a href="https://github.com/LukeSwenson06/waste-no-more-fe/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=LukeSwenson06/waste-no-more-fe" />
</a>
<p>🔥@amsalmeron Github:https://github.com/amsalmeron LinkedIn: https://linkedin.com/in/antonio-salmeron  </p>
<p>🚀@caden-jarrett Github: https://github.com/caden-jarrett LinkedIn: https://www.linkedin.com/in/caden-jarrett-0655051b6/</p>
<p>🏅@DrewProebstel Github: https://github.com/caden-jarrett LinkedIn: https://www.linkedin.com/in/drew-proebstel/ </p>
<p>🎊@LukeSwenson06 Github: https://github.com/LukeSwenson06 Linkedin: https://www.linkedin.com/in/luke-swenson </p>
<p>✨@ross-ian28 Github:https://github.com/ross-ian28 Linkedin: https://www.linkedin.com/in/ross-ian28/ </p>
<p>🎉@tjhaines-cap Github:https://github.com/tjhaines-cap LinkedIn: https://www.linkedin.com/in/thomas-haines-9b93451a0/ </p>