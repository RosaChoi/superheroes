# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.destroy_all
Superhero.destroy_all

DESCRIPTION = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."

Team.create({
  name: "Avengers",
  description: DESCRIPTION,
  })

Team.create({
  name: "X-Men",
  description: DESCRIPTION,
  })

Team.create({
  name: "Guardians of the Galaxy",
  description: DESCRIPTION,
  })

Superhero.create({
  name: "Captain America",
  height: 6.2,
  bio: "Vowing to serve his country any way he could, young Steve Rogers took the super soldier serum to become America's one-man army. Fighting for the red, white and blue for over 60 years, Captain America is the living, breathing symbol of freedom and liberty.",
  image_url: "http://x.annihil.us/u/prod/marvel/i/mg/9/80/537ba5b368b7d.jpg",
  team_id: 1
  })
Superhero.create({
  name: "Hulk",
  height: 7.6,
  bio: "Caught in a gamma bomb explosion while trying to save the life of a teenager, Dr. Bruce Banner was transformed into the incredibly powerful creature called the Hulk. An all too often misunderstood hero, the angrier the Hulk gets, the stronger the Hulk gets.",
  image_url: "http://x.annihil.us/u/prod/marvel/i/mg/e/e0/537bafa34baa9.jpg",
  team_id: 1
  })
Superhero.create({
  name: "Iron Man",
  height: 6.6,
  bio: "Wounded, captured and forced to build a weapon by his enemies, billionaire industrialist Tony Stark instead created an advanced suit of armor to save his life and escape captivity. Now with a new outlook on life, Tony uses his money and intelligence to make the world a safer, better place as Iron Man.",
  image_url: "http://i.annihil.us/u/prod/marvel/i/mg/9/90/537bb1e907de6.jpg",
  team_id: 1
  })

Superhero.create({
  name: "Wolverine",
  height: 5.3,
  bio: "Born with super-human senses and the power to heal from almost any wound, Wolverine was captured by a secret Canadian organization and given an unbreakable skeleton and claws. Treated like an animal, it took years for him to control himself. Now, he's a premiere member of both the X-Men and the Avengers.",
  image_url: "http://i.annihil.us/u/prod/marvel/i/mg/9/00/537bcb1133fd7.jpg",
  team_id: 2
  })
Superhero.create({
  name: "Storm",
  height: 5.11,
  bio: "Ororo Monroe is the descendant of an ancient line of African priestesses, all of whom have white hair, blue eyes, and the potential to wield magic.",
  image_url: "http://x.annihil.us/u/prod/marvel/i/mg/c/b0/537bc5f8a8df0.jpg",
  team_id: 2
  })

Superhero.create({
  name: "Groot",
  height: 56.2,
  bio: "The tree-like creature known as Groot was captured by the Kree and put on a team with Star-Lord, Bug, Mantis, and Rocket Raccoon. A tree of few words, Groot formed a bond with the creature known as Rocket Raccoon. Forming the Guardians of the Galaxy, Groot and his best friend Rocket travel through space getting into trouble wherever they go.",
  image_url: "http://i.annihil.us/u/prod/marvel/i/mg/9/c0/538caf3a6c767.jpg",
  team_id: 3
  })
