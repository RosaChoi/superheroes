# Create your own Titanic Teams

Your application should have the following behavior:

  * Anyone can visit the root page and see a list of all the teams
  * Anyone can click on a team to view its heroes
  * Only a logged in user can create a new team
  * Only a logged in user can add heroes to a team
  * Only the owner/creator of a team can edit/delete that team
  * Only the owner/creator of a hero can edit/delete that hero

Each Team should have a/an:
  * name (i.e. "Avengers")
  * description

Each Hero should have a/an:
  * name
  * height
  * bio
  * image_url

The specific models, routing, and views are completely up to you. With that said, this assignment is meant to build on all the things you've been learning up to this point: nested routes, model associations, authentication, etc.

## Getting Started

1. Create a new rails application
2. Include necessary gems in your Gemfile and run `bundle`
3. Run rake db:create
4. Generate your models and migrations
5. Set up the necessary associations (many to many associations)
6. Run rake db:migrate
7. Use before_actions for repeated code
8. Use partials and shared/errors
9. Style the app
10. Test Model Associations


## Bonus

 * Add a powers resource that has one to many relationship to heroes
