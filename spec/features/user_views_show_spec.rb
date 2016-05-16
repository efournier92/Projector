require 'spec_helper'

feature "User views show page" do
  let!(:john) do
    User.create(
      first_name: "John",
      last_name: "Lennon",
      email: "john@beatles.edu"
    )
  end

  let!(:paul) do
    User.create(
      first_name: "Paul",
      last_name: "McCartney",
      email: "paul@beatles.edu"
    )
  end

  let!(:george) do
    User.create(
      first_name: "George",
      last_name: "Harrison",
      email: "george@beatles.edu"
    )
  end

  let!(:ringo) do
    User.create(
      first_name: "Ringo",
      last_name: "Star",
      email: "ringo@beatles.edu"
    )
  end

  let!(:abbey_road) do
  Project.create(
    name: "Abbey Road",
    description: "The Fab Four cut a record together one last time"
  )
  end

  let!(:revolver) do
    Project.create(
      name: "Revolver",
      description: "A move toward darker subject matter, inspired by the band's time in India.")
  end

  let!(:abbey_road_team_01) do
    Team.create(user: john, project: abbey_road)
  end

  let!(:abbey_road_team_02) do
    Team.create(user: paul, project: abbey_road)
  end

  let!(:revolver_team) do
    Team.create(user: george, project: revolver)
  end

  let!(:revolver_task) do
    Task.create(name: "Lay high harmony track", project: revolver,    user: george)
  end

  scenario "contains project name & details" do
    visit '/'

    click_link('Abbey Road')

    expect(page).to have_content "Title: Abbey Road"
    expect(page).to have_content "Description: The Fab Four cut a record together one last time"
  end

  scenario "lists details of each user working on the project" do
    visit '/'

    click_link('Abbey Road')

    expect(page).to have_content "First Name: John"
    expect(page).to have_content "Email: john@beatles.edu"

    expect(page).to have_content "First Name: Paul"
    expect(page).to have_content "Last Name: McCartney"
  end


  scenario "lists each project task, and who's assigned to that task" do
    visit '/'

    click_link('Revolver')

    expect(page).to have_content "Task Name: Lay high harmony track"
    expect(page).to have_content "Assignee First Name: George"
    expect(page).to have_content "Assignee Last Name: Harrison"
  end
  
end
