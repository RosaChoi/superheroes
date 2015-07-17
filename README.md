# Superheros!

Your application should have the following behavior:

  * Anyone can visit the root page and see a list of all the teams
  * Anyone can click on a team to view its superheroes
  * Only a logged in user can create a new team
  * Only a logged in user can add superheroes to a team
  * Only the owner/creator of a team can edit/delete that team
  * Only the owner/creator of a superhero can edit/delete that superhero

Each Team should have a/an:
  * name (i.e. "Avengers")
  * description

Each Superhero should have a/an:
  * name
  * height
  * bio
  * image_url

The specific models, routing, and views are completely up to you. With that said, this assignment is meant to build on all the things you've been learning up to this point: resources, associations, authentication, etc.

## Getting Started

  1. Create a new rails application
  2. Include necessary gems in your Gemfile and run `bundle` (this includes gems for testing!)
  3. Run rake db:create
  4. Generate your models and migrations
  5. Set up the necessary associations (many to many associations)
  6. Run rake db:migrate
  7. Test Your Models! (write specs that ensure your validations, associations are set up correctly and make sure that instances of your models respond_to everything in your migration!)
  8. Use before_actions for repeated code
  9. Use partials and shared/errors
  10. Style the app

## Bonus

 * Add a powers resource that has many to many relationship to superheroes (superman has super_strength, hulk has super_strength etc)
