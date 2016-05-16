john   = User.create(first_name: "John", last_name: "Lennon", email: "john@beatles.edu")
paul   = User.create(first_name: "Paul", last_name: "McCartney", email: "paul@beatles.edu")
george = User.create(first_name: "George", last_name: "Harrison", email: "george@beatles.edu")
ringo  = User.create(first_name: "Ringo", last_name: "Star", email: "ringo@beatles.edu")

abbey_road  = Project.create(name: "Abbey Road", description: "The Fab Four cut a record together one last time")
rubber_soul = Project.create(name: "Rubber Soul")
revolver    = Project.create(name: "Revolver", description: "A move toward darker subject matter, inspired by the band's time in India.")

Team.create(user: john, project: abbey_road)
Team.create(user: paul, project: abbey_road)

Team.create(user: george, project: revolver)

Team.create(user: paul,  project: rubber_soul)
Team.create(user: ringo, project: rubber_soul)

Task.create(name: "Offbeat drum solo",      project: rubber_soul, user: ringo)
Task.create(name: "Lay high harmony track", project: revolver,    user: george)
